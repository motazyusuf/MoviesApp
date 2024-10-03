import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movies_app/core/movie_entities/movie_entity.dart';

class FirebaseUtils {
  // collection reference function
  static CollectionReference<MovieEntity> getCollectionRef() {
    return FirebaseFirestore.instance
        .collection("Movies")
        .withConverter<MovieEntity>(
            fromFirestore: (snapshot, _) =>
                MovieEntity.fromFireStore(snapshot.data()!),
            toFirestore: (movie, _) => movie.toFireStore());
  }

  static Future<void> addMovie(MovieEntity movie) {
    // reference the collection || create if !exist
    var collectionRef = getCollectionRef();

    // create empty document with id
    var documentRef = collectionRef.doc();

    movie.fireStoreID = documentRef.id;

    // set values to document
    return documentRef.set(movie);
  }

  static Future<List<MovieEntity>> readMovies() async {
    // reference the collection || create if !exist and query
    var collectionRef = getCollectionRef();

    // get collection snapshots
    var collection = await collectionRef.get();

    // get the document data out of the document snapshot
    var moviesList = collection.docs
        .map(
          (document) => document.data(),
        )
        .toList();
    return moviesList;
  }

  static Stream<QuerySnapshot<MovieEntity>> getDataStream() {
    // reference the collection || create if !exist and query
    var collectionRef = getCollectionRef();

    // stream snapshots
    var stream = collectionRef.snapshots();

    return stream;
  }

  static Future<void> deleteMovie(MovieEntity movie) async {
    // reference the collection || create if !exist and query
    var collectionRef = getCollectionRef();

    // get snapshots
    var documentRef = collectionRef.doc(movie.fireStoreID);

    // delete the document
    return documentRef.delete();
  }
}
