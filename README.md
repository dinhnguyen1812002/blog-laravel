# Blog App using PHP Laravel 10.0 with Filament and Livewire

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- PHP (version >= 7.4)
- Composer
- Node.js
- NPM/Yarn
- Laravel CLI

## Installation

1. Clone the repository:

    ```bash
    git clone <repository_url>
    ```

2. Navigate to the project directory:

    ```bash
    cd <project_directory>
    ```

3. Install PHP dependencies:

    ```bash
    composer install
    ```

4. Install Node.js dependencies:

    ```bash
    npm install
    ```

5. Run database migrations:

    ```bash
    php artisan migrate
    ```

## Configuration

1. Update your `.env` file with your database credentials:

    ```dotenv
    DB_CONNECTION=<your_connection>
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=your_database_name
    DB_USERNAME=your_database_username
    DB_PASSWORD=your_database_password
    ```

## Usage

1. Serve the application:

    ```bash
    php artisan serve
    ```

2. Access the application in your web browser at `http://localhost:8000`.

That's it! You've successfully set up the Blog App using PHP Laravel 10.0 with Filament and Livewire. Happy coding!
