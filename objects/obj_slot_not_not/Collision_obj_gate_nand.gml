if (!other.was_rejected) {
    other.speed = 1; // velocidade de expulsão
    other.direction = 0;
    other.was_rejected = true;
    other.rejected_from = id;
}