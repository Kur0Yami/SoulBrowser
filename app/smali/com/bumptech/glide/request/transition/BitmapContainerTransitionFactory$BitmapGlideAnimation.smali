.class final Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/BitmapContainerTransitionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BitmapGlideAnimation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/Transition<",
        "TR;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/request/target/ImageViewTarget;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/bumptech/glide/request/target/ViewTarget;->f:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    throw p1
.end method
