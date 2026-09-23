.class Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;


# direct methods
.method public constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;->c:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;->c:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
