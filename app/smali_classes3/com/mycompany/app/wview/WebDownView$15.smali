.class Lcom/mycompany/app/wview/WebDownView$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView$15;->c:Lcom/mycompany/app/wview/WebDownView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView$15;->c:Lcom/mycompany/app/wview/WebDownView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/wview/WebDownView;->F:Landroid/animation/ValueAnimator;

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
    iput-object v1, v0, Lcom/mycompany/app/wview/WebDownView;->F:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/wview/WebDownView;->c(Lcom/mycompany/app/wview/WebDownView;F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebDownView;->k()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
