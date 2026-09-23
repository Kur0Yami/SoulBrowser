.class Lcom/mycompany/app/main/image/MainImageWallpaper$6;
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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$6;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->u1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$6;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 10
    .line 11
    .line 12
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    :cond_0
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
