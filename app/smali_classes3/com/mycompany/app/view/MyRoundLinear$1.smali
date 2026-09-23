.class Lcom/mycompany/app/view/MyRoundLinear$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyRoundLinear;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyRoundLinear;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundLinear$1;->a:Lcom/mycompany/app/view/MyRoundLinear;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 16

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move-object/from16 v0, p0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/view/MyRoundLinear$1;->a:Lcom/mycompany/app/view/MyRoundLinear;

    .line 9
    .line 10
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyRoundLinear;->j:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-boolean v3, v1, Lcom/mycompany/app/view/MyRoundLinear;->k:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    iget v1, v1, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 27
    .line 28
    int-to-float v9, v1

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object/from16 v4, p2

    .line 32
    .line 33
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v13

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget v1, v1, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 48
    .line 49
    add-int v14, v2, v1

    .line 50
    .line 51
    int-to-float v15, v1

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v12, 0x0

    .line 54
    move-object/from16 v10, p2

    .line 55
    .line 56
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyRoundLinear;->k:Z

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget v2, v1, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 65
    .line 66
    neg-int v12, v2

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    iget v1, v1, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 76
    .line 77
    int-to-float v15, v1

    .line 78
    const/4 v11, 0x0

    .line 79
    move-object/from16 v10, p2

    .line 80
    .line 81
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_0
    return-void
.end method
