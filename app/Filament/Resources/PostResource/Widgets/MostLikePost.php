<?php

namespace App\Filament\Resources\PostResource\Widgets;

use App\Models\Post;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Filament\Tables\Columns\CheckboxColumn;
use Filament\Tables\Columns\ImageColumn;

class MostLikePost extends BaseWidget
{
    protected int | string | array $columnSpan = 2;
    public function table(Table $table): Table
    {
        return $table
            ->query(
                Post::popular(),
            )
            ->columns([

                ImageColumn::make('image'),
                TextColumn::make('title')->sortable()->searchable(),
                TextColumn::make('slug')->sortable()->searchable(),
                TextColumn::make('author.name')->sortable()->searchable(),
                CheckboxColumn::make('featured'),
                TextColumn::make('likes_count')
                    ->label('Likes')
                    ->sortable()
                    ->searchable(),
                TextColumn::make('published_at')->date('d-m-Y')->sortable()->searchable(),

            ]);
    }
}
