.class Lcom/mycompany/app/video/VideoControl$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl$18;->c:Lcom/mycompany/app/video/VideoControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoControl$18;->c:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoControl;->m0:Z

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v2, v2, Lcom/mycompany/app/view/MyButtonImage;->z:Landroid/graphics/Paint;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    sget-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->z:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    sput-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->z:Z

    .line 25
    .line 26
    iget-object v3, v0, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    .line 27
    .line 28
    const/16 v4, 0xd

    .line 29
    .line 30
    const-string v5, "mNotiAudio"

    .line 31
    .line 32
    invoke-static {v4, v3, v5, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v0, Lcom/mycompany/app/video/VideoControl;->c0:Lcom/mycompany/app/view/MyButtonImage;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 41
    .line 42
    invoke-interface {v2, p1}, Lcom/mycompany/app/video/VideoControl$ControlListener;->controlAudio(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoControl;->C(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
