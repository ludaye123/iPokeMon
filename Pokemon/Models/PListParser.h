//
//  PListParser.h
//  Pokemon
//
//  Created by Kaijie Yu on 2/5/12.
//  Copyright (c) 2012 Kjuly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PListParser : NSObject

+ (NSArray *)pokedex;
+ (NSDictionary *)pokemonInfo:(NSInteger)pokemonID;

+ (NSArray *)pokedexGenerationOneImageArray;
+ (UIImage *)pokedexGenerationOneImageForPokemon:(NSInteger)pokemonID;

@end
