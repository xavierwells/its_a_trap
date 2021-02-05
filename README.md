# It's a Trap!
 Nobody likes speeding tickets. Everyone does what they can to avoid them. As four broke college students, we wanted to search public ticket data to map where all the speed traps are so we could avoid them.

## What it does
 This app uses public ticket data along highways to record where the most tickets are given. The user is able to know these areas and be sure to drive carefully around them. The final product is a fully functional web app with multiple buttons.

## How we built it
 We used Google map APIs to visualize public traffic ticket data into a heat map. Prior to being placed on the map, the data was processed with R; weighted by a risk factor (logistic(alleged speed - posted speed)). The closer the alleged speed was to the posted speed, the higher the risk.

## Challenges we ran into
 Cleaning up data to show exactly what we wanted, finding the data as well. We found weird anomalies in the data. For example, we found tickets doing 5 mph in a 60 that were marked as speeding tickets. Finding the data was hard because at the time the data wasn't available since the website was down. We pulled the data from a web cache.

## How to download and use:

    - Clone the repository
    - Open getlocation.html
    - Bottom left, choose browse
    - Select the mapsDf.csv
