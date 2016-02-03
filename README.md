# Concurrency-Conversion
This is a backup repository for a previous IOS homework project of the [course](https://www.coursera.org/specializations/ios-development).

# Specification

```
    Include a UITextField, for the user to put the initial measurement into. It should be paired with a 
    UILabel clarifying which units the input is in.
```
```
    Below this should be a UISegmentedControl with 3 segments. Each segment should have a different 
    currency unit that the user can convert their single input to.
```
```
    Below the multi-segment controller should be a button.
```
```
    When the button is clicked the interface should evaluate which segment is selected and convert the 
    input to the appropriate unit.
```
```
    Use QuickTime to capture a screen recording (File -> New Screen Recording) in which you show XCode open 
    with your code. Hit play so that your app runs in the simulator. While it is running, demonstrate your 
    app converting to all three untis. Then stop the recording. Save the file to your local computer, then 
    upload to Coursera for Peer Review.
```
 You can find a demo video [here](https://www.youtube.com/watch?v=Wb_Az4IoPmg&feature=youtu.be).
 
# Descriptions
1. Except for when button is clicked, when the input value is changed in the text filed, my app is gonna update the results automatically

2. Except for the already supported currencies, I also added Chinese Yuan, which was previously not supported by the CRCurrencyRequest API.

3. In this assignment, I obeyed the programming routines described in the video, i.e. make declarations and imports in the ".h" file, rather than in this ".m" file.

4. As the assignment description requires, I added another Segment Controller consisting another 3 currencies, GBP, CZK, DKK. Changes to the Input Field, segment Controller and the Button will update the selected currency output also.
 
# License

    Copyright 2015.
