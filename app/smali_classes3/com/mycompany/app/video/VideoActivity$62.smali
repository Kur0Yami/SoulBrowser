.class Lcom/mycompany/app/video/VideoActivity$62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$62;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$62;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->o1()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$62;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 12
    .line 13
    const/16 v2, 0xd

    .line 14
    .line 15
    const-string v3, "mRotate"

    .line 16
    .line 17
    invoke-static {v1, v2, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->S7(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoControl;->x()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return v0
.end method
