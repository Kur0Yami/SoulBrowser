.class Lcom/mycompany/app/main/image/MainImageWallpaper$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageWallpaper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$10;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$10;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->k1:Lcom/mycompany/app/main/image/MainImageView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/main/image/MainImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->s1:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    new-instance v1, Lcom/mycompany/app/main/image/MainImageWallpaper$10$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageWallpaper$10$1;-><init>(Lcom/mycompany/app/main/image/MainImageWallpaper$10;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
