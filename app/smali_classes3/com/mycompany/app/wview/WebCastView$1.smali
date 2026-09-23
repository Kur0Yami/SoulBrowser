.class Lcom/mycompany/app/wview/WebCastView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebCastView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebCastView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/wview/WebCastView$1;->c:Lcom/mycompany/app/wview/WebCastView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebCastView$1;->c:Lcom/mycompany/app/wview/WebCastView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/wview/WebCastView;->z:Landroid/view/GestureDetector;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebCastView;->j:Z

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-boolean v0, p1, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iget-boolean v1, p1, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->t0:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p1, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 31
    .line 32
    iget v1, p1, Lcom/mycompany/app/wview/WebCastView;->k:I

    .line 33
    .line 34
    iput v1, p1, Lcom/mycompany/app/wview/WebCastView;->w:I

    .line 35
    .line 36
    iget v1, p1, Lcom/mycompany/app/wview/WebCastView;->l:I

    .line 37
    .line 38
    iput v1, p1, Lcom/mycompany/app/wview/WebCastView;->x:I

    .line 39
    .line 40
    :cond_2
    if-nez v0, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p1, Lcom/mycompany/app/wview/WebCastView;->u:Z

    .line 45
    .line 46
    :goto_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->l7(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/mycompany/app/wview/WebCastView;->y:Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-interface {v0, p1}, Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;->c(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_1
    return-void
.end method
