.class Lcom/mycompany/app/drag/DragListView$SmoothAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/drag/DragListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmoothAnimator"
.end annotation


# instance fields
.field public c:J

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:F

.field public k:Z

.field public final synthetic l:Lcom/mycompany/app/fragment/FragmentDragView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/fragment/FragmentDragView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->l:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 5
    .line 6
    const/16 p1, 0x96

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    iput p1, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->f:F

    .line 10
    .line 11
    const/high16 p1, 0x40000000    # 2.0f

    .line 12
    .line 13
    iput p1, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->j:F

    .line 14
    .line 15
    iput p1, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->g:F

    .line 16
    .line 17
    const/high16 v0, -0x41000000    # -0.5f

    .line 18
    .line 19
    iput v0, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->h:F

    .line 20
    .line 21
    iput p1, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->i:F

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->c:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    long-to-float v0, v0

    .line 14
    iget v1, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->f:F

    .line 15
    .line 16
    div-float/2addr v0, v1

    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    cmpl-float v2, v0, v1

    .line 20
    .line 21
    if-ltz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->b(F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->a()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    .line 31
    .line 32
    cmpg-float v3, v0, v2

    .line 33
    .line 34
    if-gez v3, :cond_2

    .line 35
    .line 36
    iget v1, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->g:F

    .line 37
    .line 38
    mul-float/2addr v1, v0

    .line 39
    mul-float/2addr v1, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    cmpg-float v2, v0, v2

    .line 42
    .line 43
    if-gez v2, :cond_3

    .line 44
    .line 45
    iget v1, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->i:F

    .line 46
    .line 47
    mul-float/2addr v1, v0

    .line 48
    iget v0, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->h:F

    .line 49
    .line 50
    add-float/2addr v1, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    sub-float/2addr v0, v1

    .line 53
    iget v2, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->j:F

    .line 54
    .line 55
    mul-float/2addr v2, v0

    .line 56
    mul-float/2addr v2, v0

    .line 57
    sub-float/2addr v1, v2

    .line 58
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->b(F)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/drag/DragListView$SmoothAnimator;->l:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method
