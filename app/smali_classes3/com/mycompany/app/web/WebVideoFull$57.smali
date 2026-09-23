.class Lcom/mycompany/app/web/WebVideoFull$57;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$57;->a:Lcom/mycompany/app/web/WebVideoFull;

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
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$57;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->V()V

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
    return v0

    .line 7
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$57;->a:Lcom/mycompany/app/web/WebVideoFull;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

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
    iget-object p2, p1, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 21
    .line 22
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->S7(Landroid/app/Activity;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebVideoFull;->f0()V

    .line 26
    .line 27
    .line 28
    return v0
.end method
