protected function schedule(Schedule $schedule)
{
    // Ejecutar todos los días a las 03:00 AM
    $schedule->command('pokemon:sync')->dailyAt('03:00');
}
