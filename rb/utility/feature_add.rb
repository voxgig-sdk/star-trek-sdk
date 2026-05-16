# StarTrek SDK utility: feature_add
module StarTrekUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end
