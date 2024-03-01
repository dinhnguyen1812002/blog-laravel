<?php

namespace App\Filament\Resources\PostResource\Pages;

use App\Filament\Resources\PostResource;
use App\Filament\Resources\PostResource\Widgets\MostLikePost;
use App\Filament\Resources\PostResource\Widgets\PostPerMonthChart;
use App\Filament\Resources\PostResource\Widgets\PostStatsWidget;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPosts extends ListRecords
{
    protected static string $resource = PostResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
    protected function getHeaderWidgets(): array
    {
        return [
            PostStatsWidget::class,
            PostPerMonthChart::class,

        ];
    }
}
