.class Lcom/mycompany/app/web/WebVideoFull$59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$59;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget-object v0, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$59;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->W()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

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
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lcom/mycompany/app/web/WebVideoFull$59;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 10
    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    iget-object p1, v2, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefVideo;->w:I

    .line 22
    .line 23
    iget-object p1, v2, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 24
    .line 25
    const/16 v3, 0xd

    .line 26
    .line 27
    const-string v4, "mRatio2"

    .line 28
    .line 29
    invoke-static {p1, v3, p2, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lcom/mycompany/app/web/WebVideoFull;->P(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v2, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return v0
.end method
