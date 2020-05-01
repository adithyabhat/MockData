# MockData

This project demostrates a simple implementation for mocking your data.

Sometimes when you want to speed up your UI Developement process, you might want to skip the API calls that might be required to fetch data for that screen and have the data ready just to visualize the screen. This project shows a very simple way of achieving that.

JSON files of the response data are locally stored in the Bundle. These files are configured to be removed for Release Configuration. MockDataManager loads the appropriate JSON files based on the EndPoint provided and returns it to the calling method.
