.class Lcom/mycompany/app/video/VideoActivity$63;
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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$63;->a:Lcom/mycompany/app/video/VideoActivity;

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
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$63;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->p1()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->P:[I

    .line 2
    .line 3
    array-length p1, p1

    .line 4
    rem-int/2addr p2, p1

    .line 5
    sget p1, Lcom/mycompany/app/pref/PrefVideo;->w:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefVideo;->w:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$63;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 16
    .line 17
    const/16 v2, 0xd

    .line 18
    .line 19
    const-string v3, "mRatio2"

    .line 20
    .line 21
    invoke-static {v1, v2, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p1, Lcom/mycompany/app/video/VideoActivity;->T2:Z

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoActivity;->E1(Z)V

    .line 28
    .line 29
    .line 30
    return v0
.end method
