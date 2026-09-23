.class Lcom/mycompany/app/pull/MyMaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

.field public final synthetic b:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/pull/MyMaterialProgressDrawable;Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$2;->b:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$2;->a:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$2;->a:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->e:F

    .line 4
    .line 5
    iput v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->l:F

    .line 6
    .line 7
    iget v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->f:F

    .line 8
    .line 9
    iput v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->m:F

    .line 10
    .line 11
    iget v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->g:F

    .line 12
    .line 13
    iput v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->n:F

    .line 14
    .line 15
    iget v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->k:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->j:[I

    .line 20
    .line 21
    array-length v2, v2

    .line 22
    rem-int/2addr v1, v2

    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->b(I)V

    .line 24
    .line 25
    .line 26
    iget v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->f:F

    .line 27
    .line 28
    iput v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->e:F

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$2;->b:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 34
    .line 35
    iget-boolean v2, v1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->m:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    iput-boolean v2, v1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->m:Z

    .line 41
    .line 42
    const-wide/16 v3, 0x534

    .line 43
    .line 44
    invoke-virtual {p1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 45
    .line 46
    .line 47
    iget-boolean p1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->o:Z

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    iput-boolean v2, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->o:Z

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void

    .line 57
    :cond_1
    iget p1, v1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->j:F

    .line 58
    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    .line 61
    add-float/2addr p1, v0

    .line 62
    const/high16 v0, 0x40a00000    # 5.0f

    .line 63
    .line 64
    rem-float/2addr p1, v0

    .line 65
    iput p1, v1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->j:F

    .line 66
    .line 67
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$2;->b:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->j:F

    .line 5
    .line 6
    return-void
.end method
