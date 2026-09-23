.class Lcom/mycompany/app/wview/WebTtsView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebTtsView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebTtsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebTtsView$2;->c:Lcom/mycompany/app/wview/WebTtsView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView$2;->c:Lcom/mycompany/app/wview/WebTtsView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebTtsView;->c:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebTtsView;->E:Z

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebTtsView;->P:Z

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->t0:Z

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iput-boolean v2, p1, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 27
    .line 28
    iget v0, p1, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 29
    .line 30
    iput v0, p1, Lcom/mycompany/app/wview/WebTtsView;->R:I

    .line 31
    .line 32
    iget v0, p1, Lcom/mycompany/app/wview/WebTtsView;->G:I

    .line 33
    .line 34
    iput v0, p1, Lcom/mycompany/app/wview/WebTtsView;->S:I

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/wview/WebTtsView;->g()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/mycompany/app/wview/WebTtsView;->n(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p1, Lcom/mycompany/app/wview/WebTtsView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {v0, p1}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->c(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return v2

    .line 50
    :cond_3
    :goto_0
    return v1
.end method
