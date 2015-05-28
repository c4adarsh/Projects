from mrjob.job import MRJob


class MoviesCount(MRJob):

    def mapper(self, key, line):
        """
        Mapper: send score from a single movie to
        other movies
        """
        user_id, item_id, rating = line.split('|')
        yield(item_id, 1)

    def reducer(self, movie, values):
        yield(movie, sum(values))

if __name__ == '__main__':
    MoviesCount.run()
