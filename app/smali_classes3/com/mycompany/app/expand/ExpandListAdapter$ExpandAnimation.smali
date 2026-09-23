.class Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/expand/ExpandListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandAnimation"
.end annotation


# instance fields
.field public final c:Landroid/view/View;

.field public final f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

.field public final synthetic k:Lcom/mycompany/app/expand/ExpandListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/expand/ExpandListAdapter;Landroid/view/View;IILcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->k:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->c:Landroid/view/View;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->f:I

    .line 9
    .line 10
    sub-int/2addr p4, p3

    .line 11
    iput p4, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->g:I

    .line 12
    .line 13
    iput-object p5, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->j:Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->k:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/expand/ExpandListAdapter;->a:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->c:Landroid/view/View;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 14
    .line 15
    .line 16
    const/high16 p2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    cmpg-float p2, p1, p2

    .line 19
    .line 20
    iget-object v2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->j:Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 21
    .line 22
    iget v3, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->f:I

    .line 23
    .line 24
    if-gez p2, :cond_5

    .line 25
    .line 26
    iget p2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->g:I

    .line 27
    .line 28
    int-to-float p2, p2

    .line 29
    mul-float/2addr p2, p1

    .line 30
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    add-int/2addr p1, v3

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    if-ne p1, p2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iput p1, v2, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->e:I

    .line 45
    .line 46
    iget p2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->g:I

    .line 47
    .line 48
    neg-int v2, v3

    .line 49
    if-eq p2, v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iget v3, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->i:I

    .line 56
    .line 57
    if-ne p2, v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    iget v3, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->h:I

    .line 64
    .line 65
    if-ge p2, v3, :cond_3

    .line 66
    .line 67
    iput v2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->g:I

    .line 68
    .line 69
    const/4 p2, 0x1

    .line 70
    iput-boolean p2, v0, Lcom/mycompany/app/expand/ExpandListAdapter;->c:Z

    .line 71
    .line 72
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    iput p2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->h:I

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    iput p2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->i:I

    .line 83
    .line 84
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5
    iget p1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;->g:I

    .line 95
    .line 96
    add-int/2addr v3, p1

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    .line 103
    if-ne v3, p1, :cond_6

    .line 104
    .line 105
    :goto_0
    return-void

    .line 106
    :cond_6
    iput v3, v2, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->e:I

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 115
    .line 116
    .line 117
    return-void
.end method
