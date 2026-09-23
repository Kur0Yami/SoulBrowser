.class Lcom/mycompany/app/video/VideoControl$12;
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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoControl$12;->c:Lcom/mycompany/app/video/VideoControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoControl$12;->c:Lcom/mycompany/app/video/VideoControl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->x:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->x:Z

    .line 14
    .line 15
    iget-object v1, p1, Lcom/mycompany/app/video/VideoControl;->y:Lcom/mycompany/app/video/VideoActivity;

    .line 16
    .line 17
    const/16 v2, 0xd

    .line 18
    .line 19
    const-string v3, "mNotiSet2"

    .line 20
    .line 21
    invoke-static {v2, v1, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p1, Lcom/mycompany/app/video/VideoControl;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/video/VideoControl;->B:Lcom/mycompany/app/video/VideoControl$ControlListener;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoControl$ControlListener;->J()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
