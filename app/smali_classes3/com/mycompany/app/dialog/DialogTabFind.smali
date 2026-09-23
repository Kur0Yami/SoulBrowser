.class public Lcom/mycompany/app/dialog/DialogTabFind;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;
    }
.end annotation


# instance fields
.field public a:Lcom/mycompany/app/main/MainActivity;

.field public b:Landroid/content/Context;

.field public c:Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;

.field public d:Landroid/view/ViewGroup;

.field public e:Lcom/mycompany/app/view/MyMainRelative;

.field public f:Lcom/mycompany/app/main/MainListView;

.field public final g:Z

.field public final h:Z

.field public i:Lcom/mycompany/app/view/MyDialogNormal;

.field public j:Lcom/mycompany/app/view/MyDialogBottom;

.field public k:Lcom/mycompany/app/main/MainListView$ListViewHolder;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/content/Context;Landroid/view/ViewGroup;ZZLcom/mycompany/app/dialog/DialogTabFind$TabFindListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabFind;->a:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogTabFind;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogTabFind;->d:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogTabFind;->c:Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;

    .line 11
    .line 12
    iput-boolean p4, p0, Lcom/mycompany/app/dialog/DialogTabFind;->g:Z

    .line 13
    .line 14
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogTabFind;->h:Z

    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Lcom/mycompany/app/dialog/DialogTabFind$1;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogTabFind$1;-><init>(Lcom/mycompany/app/dialog/DialogTabFind;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabFind;->f:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListView;->b0(Landroid/content/res/Configuration;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabFind;->e:Lcom/mycompany/app/view/MyMainRelative;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabFind;->a:Lcom/mycompany/app/main/MainActivity;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const/high16 v2, -0x1000000

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const v2, -0x70708

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabFind;->f:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainListView;->Q(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabFind;->f:Lcom/mycompany/app/main/MainListView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->O()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabFind;->f:Lcom/mycompany/app/main/MainListView;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabFind;->d:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogTabFind;->e:Lcom/mycompany/app/view/MyMainRelative;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabFind;->d:Landroid/view/ViewGroup;

    .line 29
    .line 30
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabFind;->a:Lcom/mycompany/app/main/MainActivity;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabFind;->b:Landroid/content/Context;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabFind;->c:Lcom/mycompany/app/dialog/DialogTabFind$TabFindListener;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabFind;->e:Lcom/mycompany/app/view/MyMainRelative;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabFind;->i:Lcom/mycompany/app/view/MyDialogNormal;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabFind;->j:Lcom/mycompany/app/view/MyDialogBottom;

    .line 41
    .line 42
    return-void
.end method
