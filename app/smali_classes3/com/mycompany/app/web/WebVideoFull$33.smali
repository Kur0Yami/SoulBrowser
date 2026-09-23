.class Lcom/mycompany/app/web/WebVideoFull$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$33;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$33;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v3, 0x2

    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    const/4 v2, 0x6

    .line 22
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v2, 0x4

    .line 27
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    :goto_1
    return-void

    .line 35
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$34;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$34;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
