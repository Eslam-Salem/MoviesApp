//
//  MovieRepository.swift
//  JahezTask
//
//  Created by Eslam Salem on 30/12/2023.
//

import Combine

protocol MovieRepository {
    func getMovieGenres() -> AnyPublisher<GenreResponse, NetworkError>
    func getPopularMovies(page: Int, requestContext: RequestContext) -> AnyPublisher<MoviesResponseModel, NetworkError>
}
