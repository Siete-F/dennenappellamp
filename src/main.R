rad2deg <- function(rad) {(rad * 180) / (pi)}
deg2rad <- function(deg) {(deg * pi) / (180)}


n_leaves <- 26

# The ratio of a full circle that the widest part of the leave should occupy
leave_width_circle_ratio <- 60/360

# The length of the tip, measured from the widest point of the leave.
tip_length <- 35

## INPUT ##
# All measures are from the most top leave till the most bottom leave.
# The number of elements must match between the inputs, but may be different then 6.

# The length of the leave, including the tip_length which is subtracted to find the distance to the frame.
leave_length <- c(68,  70,  72,  73,  78,   85)
# The drop angle of the leave. It will tip downwards with this angle in degrees
leave_angle  <- c(1,    2,   3,  17,  22.5, 40)
# radial distance of the widest leave part
leave_dist   <- c(85,  91,  94,  93,  87,   71)
# The height of the widest leave part.
leave_height <- c(8,  35,  68, 106, 148,  186)

# Between every x value in x_placing there will be 1/5th of the leaves equally divided.
x_placing <- c(0, 1.40, 2.64, 3.73, 4.64, 5.00)

# Preparation/plotting
new_x <- seq.int(0, 5, length.out = n_leaves)
all_leave_length <-  approx(x = x_placing, y = leave_length, xout = new_x)$y
all_leave_angle  <-  approx(x = x_placing, y = leave_angle,  xout = new_x)$y
all_leave_dist   <-  approx(x = x_placing, y = leave_dist,   xout = new_x)$y
all_leave_height <-  approx(x = x_placing, y = leave_height, xout = new_x)$y

# The width of the leave will 'fill' a certain percentage of a full circle.
all_leave_width <- round((all_leave_dist*2 * pi) * leave_width_circle_ratio)


angled_dist_till_center <- round(all_leave_dist / cos( deg2rad(all_leave_angle) ), 1)

# The angle between the perpendicular of the center line of the leave, and the side, pointing to the center of the lamp.
leave_side_angle_to_center <- round( rad2deg(atan(angled_dist_till_center/(0.5 * all_leave_width))), 1)

leave_base_length <- all_leave_length - tip_length

leave_base_width <- (all_leave_width/2 - (leave_base_length / tan(deg2rad(leave_side_angle_to_center))))*2

leave_base_side_xy <- matrix(c(all_leave_dist - (leave_base_length * cos(deg2rad(all_leave_angle))),
                               -(all_leave_height - (leave_base_length * sin(deg2rad(all_leave_angle))))), ncol = 2)

leave_tip_side_xy <- matrix(c(all_leave_dist + (tip_length * cos(deg2rad(all_leave_angle))),
                               -(all_leave_height + (tip_length * sin(deg2rad(all_leave_angle))))), ncol = 2)


# Plot leaves from top view
# 'asp' indicates the aspect ratio. 1 = 1:1 scale.
plot(0, 0, xlim = c(-130, 130), ylim = c(-130, 130), asp = 1)
colrs <- c('chartreuse3', 'brown1', 'brown2', 'brown', 'brown4', 'burlywood')
col_index <- seq.int(0.01, length(colrs), length.out = n_leaves)

for (iLeave in 1:n_leaves) {
  
  offset <- all_leave_dist[iLeave] - leave_base_length[iLeave]
  
  x <- c(0, leave_base_width[iLeave]/2, all_leave_width[iLeave]/2, 0,
         -all_leave_width[iLeave]/2, -leave_base_width[iLeave]/2, 0)
  
  y <- c(0, 0 , leave_base_length[iLeave], leave_base_length[iLeave] + tip_length, 
         leave_base_length[iLeave], 0, 0) + offset
  
  a = deg2rad((iLeave-1) * 137.501)
  
  # Make a rotation matrix
  rotmat <- matrix(c( cos(a), sin(a), 
                     -sin(a), cos(a)),
                   nrow = 2)
  
  # Perform matrix multiplication
  lines(matrix(c(x,y), ncol = 2) %*% rotmat,
        lwd = 6-ceiling(col_index)[iLeave], 
        col = colrs[ceiling(col_index)[iLeave]])
}


# Plot a (batch of) leave(s)
# (to redraw it on paper, cut it out, redraw it on (veneer) wood.
plot(0, 0, xlim = c(-60, 60), ylim = c(0, 100), asp = 1)
for (iLeave in 1:26) {
  
  x <- c(0, leave_base_width[iLeave]/2, all_leave_width[iLeave]/2, 0,
         -all_leave_width[iLeave]/2, -leave_base_width[iLeave]/2, 0)
  
  y <- c(0, 0 , leave_base_length[iLeave], leave_base_length[iLeave] + tip_length, 
         leave_base_length[iLeave], 0, 0)
  
  lines(matrix(c(x,y), ncol = 2),
        col = colrs[ceiling(col_index)[iLeave]])
}



# Plot leaves from side view
plot(leave_base_side_xy, xlim = c(0, 150), ylim = c(-220, 0), asp = 1, type = 'l')
points(leave_base_side_xy, pch = 8, col = 'red')

colrs <- c('chartreuse3', 'brown1', 'brown2', 'brown', 'brown4', 'burlywood')
col_index <- seq.int(0.01, length(colrs), length.out = n_leaves)

for (iLeave in 1:n_leaves) {

  x <- c(leave_base_side_xy[iLeave, 1], leave_tip_side_xy[iLeave, 1])

  y <- c(leave_base_side_xy[iLeave, 2], leave_tip_side_xy[iLeave, 2])

  lines(matrix(c(x,y), ncol = 2), 
        col = colrs[ceiling(col_index)[iLeave]])
}
