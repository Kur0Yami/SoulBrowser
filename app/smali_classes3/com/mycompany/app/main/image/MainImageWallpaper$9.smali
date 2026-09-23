.class Lcom/mycompany/app/main/image/MainImageWallpaper$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$9;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefMain;->j:Z

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$9;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sput-boolean v0, Lcom/mycompany/app/pref/PrefMain;->j:Z

    .line 9
    .line 10
    iget-object p1, p2, Lcom/mycompany/app/main/image/MainImageWallpaper;->f1:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    const-string v2, "mGuideWall"

    .line 14
    .line 15
    invoke-static {v1, p1, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p2, Lcom/mycompany/app/main/image/MainImageWallpaper;->q1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return v0
.end method
