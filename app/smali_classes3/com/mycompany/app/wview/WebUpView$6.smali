.class Lcom/mycompany/app/wview/WebUpView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/wview/WebUpView$6;->c:Lcom/mycompany/app/wview/WebUpView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView$6;->c:Lcom/mycompany/app/wview/WebUpView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/wview/WebUpView;->b(Lcom/mycompany/app/wview/WebUpView;F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
