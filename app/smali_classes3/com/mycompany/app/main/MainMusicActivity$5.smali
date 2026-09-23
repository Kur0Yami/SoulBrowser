.class Lcom/mycompany/app/main/MainMusicActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainMusicActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainMusicActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$5;->c:Lcom/mycompany/app/main/MainMusicActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$5;->c:Lcom/mycompany/app/main/MainMusicActivity;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/main/MainMusicActivity;->k1:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    iget-object p1, p1, Lcom/mycompany/app/main/MainMusicActivity;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyButtonImage;->isPressed()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 26
    return p1
.end method
