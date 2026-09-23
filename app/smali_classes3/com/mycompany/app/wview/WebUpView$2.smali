.class Lcom/mycompany/app/wview/WebUpView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebUpView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebUpView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebUpView$2;->c:Lcom/mycompany/app/wview/WebUpView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView$2;->c:Lcom/mycompany/app/wview/WebUpView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebUpView;->c:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebUpView;->h:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v1, p1, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mycompany/app/wview/WebUpView;->d()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lcom/mycompany/app/wview/WebUpView;->g:Lcom/mycompany/app/wview/WebUpView$UpViewListener;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/mycompany/app/wview/WebUpView$UpViewListener;->b()V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_2
    :goto_0
    return v1
.end method
