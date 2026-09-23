.class Lcom/mycompany/app/wview/WebCastView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/wview/WebCastView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/wview/WebCastView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/wview/WebCastView$3;->c:Lcom/mycompany/app/wview/WebCastView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebCastView$3;->c:Lcom/mycompany/app/wview/WebCastView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/wview/WebCastView;->v:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/wview/WebCastView;->c:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/wview/WebCastView;->y:Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {v1}, Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;->d()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    if-eqz v1, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 33
    .line 34
    .line 35
    :cond_3
    :goto_1
    return-void
.end method
