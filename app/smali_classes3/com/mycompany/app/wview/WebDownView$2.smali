.class Lcom/mycompany/app/wview/WebDownView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebDownView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebDownView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView$2;->c:Lcom/mycompany/app/wview/WebDownView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView$2;->c:Lcom/mycompany/app/wview/WebDownView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebDownView;->c:Z

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebDownView;->S:Z

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->t0:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iput-boolean v1, p1, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 26
    .line 27
    iget v0, p1, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 28
    .line 29
    iput v0, p1, Lcom/mycompany/app/wview/WebDownView;->U:I

    .line 30
    .line 31
    iget v0, p1, Lcom/mycompany/app/wview/WebDownView;->J:I

    .line 32
    .line 33
    iput v0, p1, Lcom/mycompany/app/wview/WebDownView;->V:I

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/wview/WebDownView;->g()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/mycompany/app/wview/WebDownView;->r()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p1, Lcom/mycompany/app/wview/WebDownView;->h:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->c(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return v1

    .line 49
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 50
    return p1
.end method
