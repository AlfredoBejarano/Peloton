repeat(16) {
    create_blood_splat(self.x + (irandom_range(100, 128)* image_xscale), self.y - irandom_range(156, 128), self, false, depth - 1);
}
instance_create(x, y, obj_blood_floor);
alarm[8] = 7;
