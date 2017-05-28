repeat(16) {
    create_blood_splat(self.x + irandom_range(100, 128), self.y - irandom_range(156, 128), self, false, depth - 1);
}
alarm[8] = 15;
