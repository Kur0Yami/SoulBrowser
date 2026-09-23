.class public Lcom/mycompany/app/view/MyBarView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyBarView$BarListener;,
        Lcom/mycompany/app/view/MyBarView$BarItem;
    }
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field public A:Z

.field public c:I

.field public f:Lcom/mycompany/app/view/MyBarView$BarListener;

.field public g:[I

.field public h:[I

.field public i:[I

.field public j:[Lcom/mycompany/app/view/MyIconView;

.field public k:Lcom/mycompany/app/view/MyIconView;

.field public l:Lcom/mycompany/app/view/MyIconView;

.field public m:Lcom/mycompany/app/view/MyIconView;

.field public n:Lcom/mycompany/app/view/MyIconView;

.field public o:Lcom/mycompany/app/view/MyIconView;

.field public p:Lcom/mycompany/app/view/MyIconView;

.field public q:Lcom/mycompany/app/view/MyIconView;

.field public r:Lcom/mycompany/app/view/MyIconView;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public static c(IZ)I
    .locals 8

    .line 1
    sget-object v0, Lcom/mycompany/app/pref/PrefMain;->D:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    array-length v2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v1

    .line 13
    :goto_0
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    sget-object v3, Lcom/mycompany/app/pref/PrefMain;->E:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    array-length v4, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    move v4, v1

    .line 27
    :goto_1
    if-nez v4, :cond_3

    .line 28
    .line 29
    :goto_2
    const/4 p0, -0x1

    .line 30
    return p0

    .line 31
    :cond_3
    const/4 v5, 0x1

    .line 32
    if-eqz v2, :cond_5

    .line 33
    .line 34
    move v6, v1

    .line 35
    :goto_3
    if-ge v6, v2, :cond_5

    .line 36
    .line 37
    aget v7, v0, v6

    .line 38
    .line 39
    if-ne v7, v5, :cond_4

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x3

    .line 42
    .line 43
    move v0, v5

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_5
    move v0, v1

    .line 49
    :goto_4
    if-nez v0, :cond_7

    .line 50
    .line 51
    if-eqz v4, :cond_7

    .line 52
    .line 53
    :goto_5
    if-ge v1, v4, :cond_7

    .line 54
    .line 55
    aget v0, v3, v1

    .line 56
    .line 57
    if-ne v0, v5, :cond_6

    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x3

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_7
    :goto_6
    add-int/2addr v4, v2

    .line 66
    int-to-float v0, p0

    .line 67
    int-to-float v1, v4

    .line 68
    div-float/2addr v0, v1

    .line 69
    int-to-float v1, v2

    .line 70
    mul-float/2addr v0, v1

    .line 71
    float-to-int v0, v0

    .line 72
    if-eqz p1, :cond_8

    .line 73
    .line 74
    return v0

    .line 75
    :cond_8
    sub-int/2addr p0, v0

    .line 76
    return p0
.end method

.method private getDownView()Lcom/mycompany/app/view/MyIconView;
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lcom/mycompany/app/view/MyBarView;->c:I

    .line 7
    .line 8
    if-eq v2, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    const/4 v2, 0x2

    .line 11
    if-ne v0, v2, :cond_6

    .line 12
    .line 13
    iget v0, p0, Lcom/mycompany/app/view/MyBarView;->c:I

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    sub-int/2addr v0, v1

    .line 26
    :goto_0
    const/4 v1, -0x1

    .line 27
    if-le v0, v1, :cond_6

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    instance-of v2, v1, Lcom/mycompany/app/view/MyIconView;

    .line 37
    .line 38
    if-nez v2, :cond_4

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    check-cast v1, Lcom/mycompany/app/view/MyIconView;

    .line 42
    .line 43
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyIconView;->h:Z

    .line 44
    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_6
    :goto_2
    const/4 v0, 0x0

    .line 52
    return-object v0
.end method

.method private getYouView()Lcom/mycompany/app/view/MyIconView;
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lcom/mycompany/app/view/MyBarView;->c:I

    .line 7
    .line 8
    if-eq v2, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    const/4 v2, 0x2

    .line 11
    if-ne v0, v2, :cond_6

    .line 12
    .line 13
    iget v0, p0, Lcom/mycompany/app/view/MyBarView;->c:I

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    sub-int/2addr v0, v1

    .line 26
    :goto_0
    const/4 v1, -0x1

    .line 27
    if-le v0, v1, :cond_6

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    instance-of v2, v1, Lcom/mycompany/app/view/MyIconView;

    .line 37
    .line 38
    if-nez v2, :cond_4

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    check-cast v1, Lcom/mycompany/app/view/MyIconView;

    .line 42
    .line 43
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyIconView;->i:Z

    .line 44
    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_6
    :goto_2
    const/4 v0, 0x0

    .line 52
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;[ILjava/lang/String;Ljava/lang/String;IZIIZIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v3, p10

    move/from16 v1, p13

    .line 1
    iget-object v2, v0, Lcom/mycompany/app/view/MyBarView;->l:Lcom/mycompany/app/view/MyIconView;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, v9}, Lcom/mycompany/app/view/MyIconView;->setClickEnabled(Z)V

    .line 3
    iput-object v8, v0, Lcom/mycompany/app/view/MyBarView;->l:Lcom/mycompany/app/view/MyIconView;

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/view/MyBarView;->m:Lcom/mycompany/app/view/MyIconView;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, v9}, Lcom/mycompany/app/view/MyIconView;->setClickEnabled(Z)V

    .line 6
    iput-object v8, v0, Lcom/mycompany/app/view/MyBarView;->m:Lcom/mycompany/app/view/MyIconView;

    .line 7
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/view/MyBarView;->n:Lcom/mycompany/app/view/MyIconView;

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2, v10, v10, v10}, Lcom/mycompany/app/view/MyIconView;->y(III)V

    .line 9
    iput-object v8, v0, Lcom/mycompany/app/view/MyBarView;->n:Lcom/mycompany/app/view/MyIconView;

    .line 10
    :cond_2
    iput-object v8, v0, Lcom/mycompany/app/view/MyBarView;->k:Lcom/mycompany/app/view/MyIconView;

    .line 11
    iput-object v8, v0, Lcom/mycompany/app/view/MyBarView;->o:Lcom/mycompany/app/view/MyIconView;

    .line 12
    iput-object v8, v0, Lcom/mycompany/app/view/MyBarView;->p:Lcom/mycompany/app/view/MyIconView;

    .line 13
    iput-object v8, v0, Lcom/mycompany/app/view/MyBarView;->q:Lcom/mycompany/app/view/MyIconView;

    .line 14
    iput-object v8, v0, Lcom/mycompany/app/view/MyBarView;->r:Lcom/mycompany/app/view/MyIconView;

    move-object/from16 v2, p2

    .line 15
    iput-object v2, v0, Lcom/mycompany/app/view/MyBarView;->g:[I

    .line 16
    iput v1, v0, Lcom/mycompany/app/view/MyBarView;->c:I

    const/4 v11, 0x2

    if-ne v1, v11, :cond_3

    .line 17
    sget-object v1, Lcom/mycompany/app/pref/PrefMain;->F:Ljava/lang/String;

    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/view/MyBarView;->h:[I

    .line 18
    sget-object v1, Lcom/mycompany/app/pref/PrefMain;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/mycompany/app/view/MyBarView;->i:[I

    .line 19
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/view/MyBarView;->g:[I

    if-eqz v1, :cond_4

    array-length v1, v1

    move v12, v1

    goto :goto_0

    :cond_4
    move v12, v10

    .line 20
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    if-eqz v1, :cond_5

    array-length v1, v1

    goto :goto_1

    :cond_5
    move v1, v10

    .line 21
    :goto_1
    iput-boolean v10, v0, Lcom/mycompany/app/view/MyBarView;->u:Z

    .line 22
    iput-boolean v10, v0, Lcom/mycompany/app/view/MyBarView;->v:Z

    .line 23
    iput-boolean v10, v0, Lcom/mycompany/app/view/MyBarView;->w:Z

    .line 24
    iget v2, v0, Lcom/mycompany/app/view/MyBarView;->c:I

    if-eqz v2, :cond_9

    move/from16 v2, p12

    move v4, v10

    :goto_2
    if-ge v4, v12, :cond_9

    .line 25
    iget-object v5, v0, Lcom/mycompany/app/view/MyBarView;->g:[I

    aget v5, v5, v4

    if-ne v5, v9, :cond_7

    .line 26
    iput-boolean v9, v0, Lcom/mycompany/app/view/MyBarView;->u:Z

    if-nez v2, :cond_6

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    :cond_6
    add-int/lit8 v5, v12, 0x3

    .line 28
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    mul-int/2addr v5, v6

    if-le v5, v2, :cond_8

    .line 29
    iput-boolean v9, v0, Lcom/mycompany/app/view/MyBarView;->w:Z

    goto :goto_3

    :cond_7
    if-ne v5, v11, :cond_8

    .line 30
    iput-boolean v9, v0, Lcom/mycompany/app/view/MyBarView;->v:Z

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    const/16 v14, 0x1e

    if-ge v1, v12, :cond_1a

    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyBarView;->getCastView()Lcom/mycompany/app/wview/WebCastView;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 32
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    :cond_a
    invoke-direct {v0}, Lcom/mycompany/app/view/MyBarView;->getDownView()Lcom/mycompany/app/view/MyIconView;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 34
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    :cond_b
    invoke-direct {v0}, Lcom/mycompany/app/view/MyBarView;->getYouView()Lcom/mycompany/app/view/MyIconView;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 36
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    :cond_c
    new-array v6, v12, [Lcom/mycompany/app/view/MyIconView;

    move v7, v10

    :goto_4
    if-ge v7, v1, :cond_d

    .line 38
    iget-object v15, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    aget-object v15, v15, v7

    aput-object v15, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    const/4 v7, -0x1

    if-ge v1, v12, :cond_16

    .line 39
    new-instance v15, Lcom/mycompany/app/view/MyIconView;

    move-object/from16 v13, p1

    invoke-direct {v15, v13}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    aput-object v15, v6, v1

    .line 40
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 41
    iget-object v8, v0, Lcom/mycompany/app/view/MyBarView;->g:[I

    aget v8, v8, v1

    .line 42
    iget-boolean v15, v0, Lcom/mycompany/app/view/MyBarView;->w:Z

    iget-boolean v10, v0, Lcom/mycompany/app/view/MyBarView;->u:Z

    if-eqz v15, :cond_f

    if-ne v8, v9, :cond_e

    goto :goto_7

    :cond_e
    if-ne v8, v14, :cond_11

    .line 43
    sget v16, Lcom/mycompany/app/main/MainApp;->g1:I

    :goto_6
    move/from16 v11, v16

    goto :goto_8

    :cond_f
    if-eqz v10, :cond_11

    if-ne v8, v9, :cond_10

    goto :goto_7

    .line 44
    :cond_10
    sget v16, Lcom/mycompany/app/main/MainApp;->g1:I

    goto :goto_6

    :cond_11
    :goto_7
    const/4 v11, 0x0

    :goto_8
    if-eqz v15, :cond_13

    if-ne v8, v9, :cond_12

    const/4 v8, 0x4

    goto :goto_b

    :cond_12
    if-ne v8, v14, :cond_15

    goto :goto_9

    :cond_13
    if-eqz v10, :cond_15

    if-ne v8, v9, :cond_14

    goto :goto_a

    :cond_14
    :goto_9
    const/4 v8, 0x0

    goto :goto_b

    :cond_15
    :goto_a
    move v8, v9

    .line 45
    :goto_b
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v7, v8

    .line 46
    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 47
    aget-object v7, v6, v1

    invoke-virtual {v0, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    goto :goto_5

    :cond_16
    move-object/from16 v13, p1

    if-eqz v5, :cond_17

    .line 48
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v0, v5, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_17
    if-eqz v4, :cond_18

    .line 49
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v0, v4, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_18
    if-eqz v2, :cond_19

    .line 50
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v0, v2, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 51
    :cond_19
    iput-object v6, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    goto :goto_e

    :cond_1a
    move-object/from16 v13, p1

    if-ge v12, v1, :cond_1d

    .line 52
    new-array v2, v12, [Lcom/mycompany/app/view/MyIconView;

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v12, :cond_1b

    .line 53
    iget-object v5, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    aget-object v5, v5, v4

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1b
    move v4, v12

    :goto_d
    if-ge v4, v1, :cond_1c

    .line 54
    iget-object v5, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 55
    :cond_1c
    iput-object v2, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    .line 56
    :cond_1d
    :goto_e
    iput v3, v0, Lcom/mycompany/app/view/MyBarView;->y:I

    .line 57
    invoke-static/range {p10 .. p11}, Lcom/mycompany/app/main/MainUtil;->P1(II)I

    move-result v8

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v12, :cond_41

    .line 58
    iget-object v1, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    aget-object v1, v1, v10

    if-nez v1, :cond_1e

    move/from16 v6, p7

    move/from16 v7, p8

    const/4 v2, 0x4

    const/4 v4, 0x2

    :goto_10
    const/4 v5, 0x0

    const/4 v11, 0x0

    goto/16 :goto_24

    .line 59
    :cond_1e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v2, v0, Lcom/mycompany/app/view/MyBarView;->g:[I

    aget v11, v2, v10

    const/16 v2, 0x44

    if-nez v11, :cond_20

    :cond_1f
    :goto_11
    move/from16 v6, p7

    move/from16 v7, p8

    const/4 v4, 0x2

    goto/16 :goto_21

    :cond_20
    if-ne v11, v2, :cond_21

    goto :goto_11

    :cond_21
    if-ltz v11, :cond_1f

    const/16 v4, 0x4b

    if-ge v11, v4, :cond_1f

    if-ne v11, v9, :cond_22

    move v15, v9

    goto :goto_12

    :cond_22
    const/4 v15, 0x0

    :goto_12
    const/16 v2, 0x40

    const/16 v4, 0x1d

    const/16 v5, 0x3f

    if-eqz v15, :cond_23

    .line 61
    iput-object v1, v0, Lcom/mycompany/app/view/MyBarView;->k:Lcom/mycompany/app/view/MyIconView;

    goto :goto_13

    :cond_23
    const/16 v6, 0x1a

    if-ne v11, v6, :cond_24

    .line 62
    iput-object v1, v0, Lcom/mycompany/app/view/MyBarView;->l:Lcom/mycompany/app/view/MyIconView;

    goto :goto_13

    :cond_24
    const/16 v6, 0x1b

    if-ne v11, v6, :cond_25

    .line 63
    iput-object v1, v0, Lcom/mycompany/app/view/MyBarView;->m:Lcom/mycompany/app/view/MyIconView;

    goto :goto_13

    :cond_25
    if-ne v11, v14, :cond_26

    .line 64
    iput-object v1, v0, Lcom/mycompany/app/view/MyBarView;->n:Lcom/mycompany/app/view/MyIconView;

    goto :goto_13

    :cond_26
    if-ne v11, v5, :cond_27

    .line 65
    iput-object v1, v0, Lcom/mycompany/app/view/MyBarView;->o:Lcom/mycompany/app/view/MyIconView;

    goto :goto_13

    :cond_27
    if-ne v11, v4, :cond_28

    .line 66
    iput-object v1, v0, Lcom/mycompany/app/view/MyBarView;->p:Lcom/mycompany/app/view/MyIconView;

    goto :goto_13

    :cond_28
    if-ne v11, v2, :cond_29

    .line 67
    iput-object v1, v0, Lcom/mycompany/app/view/MyBarView;->q:Lcom/mycompany/app/view/MyIconView;

    goto :goto_13

    :cond_29
    const/16 v6, 0x23

    if-ne v11, v6, :cond_2a

    .line 68
    iput-object v1, v0, Lcom/mycompany/app/view/MyBarView;->r:Lcom/mycompany/app/view/MyIconView;

    :cond_2a
    :goto_13
    if-eqz v15, :cond_2c

    .line 69
    iget v2, v0, Lcom/mycompany/app/view/MyBarView;->c:I

    if-ne v2, v9, :cond_2b

    move v2, v9

    :goto_14
    move/from16 v4, p9

    move/from16 v5, p11

    goto :goto_15

    :cond_2b
    const/4 v2, 0x0

    goto :goto_14

    :goto_15
    invoke-virtual {v1, v3, v5, v4, v2}, Lcom/mycompany/app/view/MyIconView;->p(IIZZ)V

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v2, p5

    move/from16 v7, p6

    move-object v4, v13

    .line 70
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/view/MyIconView;->s(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    move/from16 v6, p7

    move/from16 v7, p8

    goto/16 :goto_1b

    :cond_2c
    if-ne v11, v14, :cond_2d

    move/from16 v6, p7

    move/from16 v7, p8

    .line 71
    invoke-virtual {v1, v6, v7, v3}, Lcom/mycompany/app/view/MyIconView;->y(III)V

    goto :goto_1b

    :cond_2d
    move/from16 v6, p7

    move/from16 v7, p8

    if-ne v11, v5, :cond_2f

    .line 72
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyBarView;->s:Z

    if-eqz v2, :cond_2e

    .line 73
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_yellow_24:I

    goto :goto_16

    .line 74
    :cond_2e
    invoke-static {v5, v3}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    move-result v2

    .line 75
    :goto_16
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    goto :goto_1b

    :cond_2f
    if-ne v11, v4, :cond_31

    .line 76
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyBarView;->s:Z

    if-eqz v2, :cond_30

    .line 77
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_2_yellow_24:I

    goto :goto_17

    .line 78
    :cond_30
    invoke-static {v4, v3}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    move-result v2

    .line 79
    :goto_17
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    goto :goto_1b

    :cond_31
    if-ne v11, v2, :cond_33

    .line 80
    iget-boolean v4, v0, Lcom/mycompany/app/view/MyBarView;->t:Z

    if-eqz v4, :cond_32

    .line 81
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_for_offline_red_24:I

    goto :goto_18

    .line 82
    :cond_32
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    move-result v2

    .line 83
    :goto_18
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    goto :goto_1b

    :cond_33
    const/4 v2, 0x2

    if-ne v11, v2, :cond_36

    .line 84
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    if-eqz v2, :cond_34

    goto :goto_19

    .line 85
    :cond_34
    iget v2, v0, Lcom/mycompany/app/view/MyBarView;->c:I

    if-ne v2, v9, :cond_35

    move v2, v9

    goto :goto_1a

    :cond_35
    :goto_19
    const/4 v2, 0x0

    .line 86
    :goto_1a
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->j2(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    goto :goto_1b

    .line 87
    :cond_36
    invoke-static {v11, v3}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 88
    :goto_1b
    invoke-virtual {v0, v1, v11, v3}, Lcom/mycompany/app/view/MyBarView;->e(Lcom/mycompany/app/view/MyIconView;II)V

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    xor-int/lit8 v2, v15, 0x1

    .line 90
    invoke-virtual {v1, v15, v2}, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V

    .line 91
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V

    if-eqz v15, :cond_38

    .line 92
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyIconView;->setHostPreColor(I)V

    if-eqz p6, :cond_37

    move v2, v8

    goto :goto_1c

    :cond_37
    const/4 v2, 0x0

    .line 93
    :goto_1c
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setTrnsPreColor(I)V

    :cond_38
    if-eqz v15, :cond_39

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setNoAnim(Z)V

    goto :goto_1e

    .line 95
    :cond_39
    iget v2, v0, Lcom/mycompany/app/view/MyBarView;->c:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3a

    move v2, v9

    goto :goto_1d

    :cond_3a
    const/4 v2, 0x0

    :goto_1d
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setNoAnim(Z)V

    .line 96
    :goto_1e
    new-instance v2, Lcom/mycompany/app/view/MyBarView$1;

    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyBarView$1;-><init>(Lcom/mycompany/app/view/MyBarView;)V

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget v2, v0, Lcom/mycompany/app/view/MyBarView;->c:I

    if-ne v2, v9, :cond_3c

    if-eqz v15, :cond_3b

    .line 98
    new-instance v2, Lcom/mycompany/app/view/MyBarView$2;

    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyBarView$2;-><init>(Lcom/mycompany/app/view/MyBarView;)V

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_1f
    const/4 v4, 0x2

    goto :goto_20

    :cond_3b
    const/4 v2, 0x0

    .line 99
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1f

    :cond_3c
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3e

    .line 100
    iget-object v2, v0, Lcom/mycompany/app/view/MyBarView;->h:[I

    if-eqz v2, :cond_3d

    array-length v2, v2

    if-ge v10, v2, :cond_3d

    .line 101
    new-instance v2, Lcom/mycompany/app/view/MyBarView$3;

    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyBarView$3;-><init>(Lcom/mycompany/app/view/MyBarView;)V

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_20

    :cond_3d
    const/4 v2, 0x0

    .line 102
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_20

    .line 103
    :cond_3e
    new-instance v2, Lcom/mycompany/app/view/MyBarView$4;

    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyBarView$4;-><init>(Lcom/mycompany/app/view/MyBarView;)V

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_20
    if-eqz v15, :cond_3f

    .line 104
    new-instance v2, Lcom/mycompany/app/view/MyBarView$5;

    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyBarView$5;-><init>(Lcom/mycompany/app/view/MyBarView;)V

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setAddrIconListener(Lcom/mycompany/app/view/MyIconView$AddrIconListener;)V

    .line 105
    :cond_3f
    invoke-virtual {v0, v11, v1}, Lcom/mycompany/app/view/MyBarView;->b(ILcom/mycompany/app/view/MyIconView;)V

    const/4 v2, 0x4

    goto/16 :goto_10

    :goto_21
    if-ne v11, v2, :cond_40

    const/4 v2, 0x4

    .line 106
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 107
    invoke-virtual {v0, v11, v1}, Lcom/mycompany/app/view/MyBarView;->b(ILcom/mycompany/app/view/MyIconView;)V

    :goto_22
    const/4 v5, 0x0

    goto :goto_23

    :cond_40
    const/4 v2, 0x4

    const/16 v5, 0x8

    .line 108
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    goto :goto_22

    .line 109
    :goto_23
    iput v5, v1, Lcom/mycompany/app/view/MyIconView;->f:I

    .line 110
    iput v5, v1, Lcom/mycompany/app/view/MyIconView;->n:I

    const/4 v11, 0x0

    .line 111
    iput-object v11, v1, Lcom/mycompany/app/view/MyIconView;->o:Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyIconView;->o()V

    .line 113
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyIconView;->n()V

    .line 114
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_24
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v13, p1

    goto/16 :goto_f

    :cond_41
    return-void
.end method

.method public final b(ILcom/mycompany/app/view/MyIconView;)V
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyBarView;->w:Z

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyBarView;->u:Z

    .line 16
    .line 17
    const/16 v3, 0x1e

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    if-ne p1, v5, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    if-ne p1, v3, :cond_5

    .line 27
    .line 28
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    if-eqz v2, :cond_5

    .line 32
    .line 33
    if-ne p1, v5, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_5
    :goto_0
    move v6, v4

    .line 40
    :goto_1
    if-eqz v1, :cond_7

    .line 41
    .line 42
    if-ne p1, v5, :cond_6

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    goto :goto_2

    .line 46
    :cond_6
    if-ne p1, v3, :cond_8

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_7
    if-eqz v2, :cond_8

    .line 50
    .line 51
    if-ne p1, v5, :cond_9

    .line 52
    .line 53
    :cond_8
    move v4, v5

    .line 54
    :cond_9
    :goto_2
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 55
    .line 56
    if-ne p1, v6, :cond_b

    .line 57
    .line 58
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 59
    .line 60
    int-to-float v1, v4

    .line 61
    cmpl-float p1, p1, v1

    .line 62
    .line 63
    if-eqz p1, :cond_a

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_a
    :goto_3
    return-void

    .line 67
    :cond_b
    :goto_4
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    .line 69
    int-to-float p1, v4

    .line 70
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->f:Lcom/mycompany/app/view/MyBarView$BarListener;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->g:[I

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->h:[I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->i:[I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->k:Lcom/mycompany/app/view/MyIconView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->l:Lcom/mycompany/app/view/MyIconView;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->m:Lcom/mycompany/app/view/MyIconView;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->n:Lcom/mycompany/app/view/MyIconView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->o:Lcom/mycompany/app/view/MyIconView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->p:Lcom/mycompany/app/view/MyIconView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->q:Lcom/mycompany/app/view/MyIconView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarView;->r:Lcom/mycompany/app/view/MyIconView;

    .line 27
    .line 28
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/mycompany/app/view/MyBarView;->z:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyBarView;->A:Z

    .line 6
    .line 7
    return p1
.end method

.method public final e(Lcom/mycompany/app/view/MyIconView;II)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x3f

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    if-eq p2, v0, :cond_4

    .line 9
    .line 10
    const/16 v0, 0x1d

    .line 11
    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/16 v0, 0x40

    .line 16
    .line 17
    if-ne p2, v0, :cond_3

    .line 18
    .line 19
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyBarView;->t:Z

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-static {p3}, Lcom/mycompany/app/view/MyIconView;->i(I)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    invoke-static {p3}, Lcom/mycompany/app/view/MyIconView;->i(I)F

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_4
    :goto_0
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyBarView;->s:Z

    .line 44
    .line 45
    if-eqz p2, :cond_5

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_5
    invoke-static {p3}, Lcom/mycompany/app/view/MyIconView;->i(I)F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final f(IZ)V
    .locals 3

    .line 1
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyBarView;->s:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView;->o:Lcom/mycompany/app/view/MyIconView;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x3f

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_yellow_24:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    :goto_0
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView;->o:Lcom/mycompany/app/view/MyIconView;

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1, p1}, Lcom/mycompany/app/view/MyBarView;->e(Lcom/mycompany/app/view/MyIconView;II)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView;->p:Lcom/mycompany/app/view/MyIconView;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const/16 v1, 0x1d

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_2_yellow_24:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    :goto_1
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/mycompany/app/view/MyBarView;->p:Lcom/mycompany/app/view/MyIconView;

    .line 45
    .line 46
    invoke-virtual {p0, p2, v1, p1}, Lcom/mycompany/app/view/MyBarView;->e(Lcom/mycompany/app/view/MyIconView;II)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZIIZII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v3, p9

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/view/MyBarView;->g:[I

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    move v9, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v9, v8

    .line 14
    :goto_0
    if-nez v9, :cond_1

    .line 15
    .line 16
    goto/16 :goto_e

    .line 17
    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move v1, v8

    .line 25
    :goto_1
    if-eq v9, v1, :cond_3

    .line 26
    .line 27
    goto/16 :goto_e

    .line 28
    .line 29
    :cond_3
    iput v3, v0, Lcom/mycompany/app/view/MyBarView;->y:I

    .line 30
    .line 31
    invoke-static/range {p9 .. p10}, Lcom/mycompany/app/main/MainUtil;->P1(II)I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    move v11, v8

    .line 36
    :goto_2
    if-ge v11, v9, :cond_14

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    .line 39
    .line 40
    aget-object v1, v1, v11

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    move/from16 v4, p6

    .line 45
    .line 46
    move/from16 v5, p7

    .line 47
    .line 48
    move/from16 v14, p8

    .line 49
    .line 50
    move/from16 v15, p10

    .line 51
    .line 52
    goto/16 :goto_d

    .line 53
    .line 54
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/view/MyBarView;->g:[I

    .line 55
    .line 56
    aget v12, v2, v11

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    if-ne v12, v2, :cond_5

    .line 60
    .line 61
    move v13, v2

    .line 62
    goto :goto_3

    .line 63
    :cond_5
    move v13, v8

    .line 64
    :goto_3
    if-eqz v13, :cond_7

    .line 65
    .line 66
    iget v4, v0, Lcom/mycompany/app/view/MyBarView;->c:I

    .line 67
    .line 68
    if-ne v4, v2, :cond_6

    .line 69
    .line 70
    :goto_4
    move/from16 v14, p8

    .line 71
    .line 72
    move/from16 v15, p10

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_6
    move v2, v8

    .line 76
    goto :goto_4

    .line 77
    :goto_5
    invoke-virtual {v1, v3, v15, v14, v2}, Lcom/mycompany/app/view/MyIconView;->p(IIZZ)V

    .line 78
    .line 79
    .line 80
    move-object/from16 v4, p1

    .line 81
    .line 82
    move-object/from16 v5, p2

    .line 83
    .line 84
    move-object/from16 v6, p3

    .line 85
    .line 86
    move/from16 v2, p4

    .line 87
    .line 88
    move/from16 v7, p5

    .line 89
    .line 90
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/view/MyIconView;->s(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    move/from16 v4, p6

    .line 94
    .line 95
    move/from16 v5, p7

    .line 96
    .line 97
    goto/16 :goto_b

    .line 98
    .line 99
    :cond_7
    move/from16 v14, p8

    .line 100
    .line 101
    move/from16 v15, p10

    .line 102
    .line 103
    const/16 v4, 0x1e

    .line 104
    .line 105
    if-ne v12, v4, :cond_8

    .line 106
    .line 107
    move/from16 v4, p6

    .line 108
    .line 109
    move/from16 v5, p7

    .line 110
    .line 111
    invoke-virtual {v1, v4, v5, v3}, Lcom/mycompany/app/view/MyIconView;->y(III)V

    .line 112
    .line 113
    .line 114
    goto :goto_b

    .line 115
    :cond_8
    move/from16 v4, p6

    .line 116
    .line 117
    move/from16 v5, p7

    .line 118
    .line 119
    const/16 v6, 0x3f

    .line 120
    .line 121
    if-ne v12, v6, :cond_a

    .line 122
    .line 123
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyBarView;->s:Z

    .line 124
    .line 125
    if-eqz v2, :cond_9

    .line 126
    .line 127
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_yellow_24:I

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_9
    invoke-static {v6, v3}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    :goto_6
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_b

    .line 138
    :cond_a
    const/16 v6, 0x1d

    .line 139
    .line 140
    if-ne v12, v6, :cond_c

    .line 141
    .line 142
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyBarView;->s:Z

    .line 143
    .line 144
    if-eqz v2, :cond_b

    .line 145
    .line 146
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_2_yellow_24:I

    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_b
    invoke-static {v6, v3}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    :goto_7
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_b

    .line 157
    :cond_c
    const/16 v6, 0x40

    .line 158
    .line 159
    if-ne v12, v6, :cond_e

    .line 160
    .line 161
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyBarView;->t:Z

    .line 162
    .line 163
    if-eqz v2, :cond_d

    .line 164
    .line 165
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_for_offline_red_24:I

    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_d
    invoke-static {v6, v3}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    :goto_8
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_b

    .line 176
    :cond_e
    const/4 v6, 0x2

    .line 177
    if-ne v12, v6, :cond_11

    .line 178
    .line 179
    sget-boolean v6, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 180
    .line 181
    if-eqz v6, :cond_f

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_f
    iget v6, v0, Lcom/mycompany/app/view/MyBarView;->c:I

    .line 185
    .line 186
    if-ne v6, v2, :cond_10

    .line 187
    .line 188
    goto :goto_a

    .line 189
    :cond_10
    :goto_9
    move v2, v8

    .line 190
    :goto_a
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->j2(IZ)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_b

    .line 198
    :cond_11
    invoke-static {v12, v3}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 203
    .line 204
    .line 205
    :goto_b
    invoke-virtual {v0, v1, v12, v3}, Lcom/mycompany/app/view/MyBarView;->e(Lcom/mycompany/app/view/MyIconView;II)V

    .line 206
    .line 207
    .line 208
    xor-int/lit8 v2, v13, 0x1

    .line 209
    .line 210
    invoke-virtual {v1, v13, v2}, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V

    .line 214
    .line 215
    .line 216
    if-eqz v13, :cond_13

    .line 217
    .line 218
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyIconView;->setHostPreColor(I)V

    .line 219
    .line 220
    .line 221
    if-eqz p5, :cond_12

    .line 222
    .line 223
    move v2, v10

    .line 224
    goto :goto_c

    .line 225
    :cond_12
    move v2, v8

    .line 226
    :goto_c
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setTrnsPreColor(I)V

    .line 227
    .line 228
    .line 229
    :cond_13
    :goto_d
    add-int/lit8 v11, v11, 0x1

    .line 230
    .line 231
    goto/16 :goto_2

    .line 232
    .line 233
    :cond_14
    :goto_e
    return-void
.end method

.method public getCastView()Lcom/mycompany/app/wview/WebCastView;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/view/MyBarView;->c:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sub-int/2addr v0, v1

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    instance-of v1, v0, Lcom/mycompany/app/wview/WebCastView;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    check-cast v0, Lcom/mycompany/app/wview/WebCastView;

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public getColorType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyBarView;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_6

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    array-length v2, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    move v2, v1

    .line 19
    :goto_1
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    goto :goto_6

    .line 22
    :cond_3
    move v2, v1

    .line 23
    :goto_2
    if-ge v2, v0, :cond_9

    .line 24
    .line 25
    iget-object v3, p0, Lcom/mycompany/app/view/MyBarView;->g:[I

    .line 26
    .line 27
    aget v3, v3, v2

    .line 28
    .line 29
    if-ne p1, v3, :cond_8

    .line 30
    .line 31
    iget-object v3, p0, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    .line 32
    .line 33
    aget-object v3, v3, v2

    .line 34
    .line 35
    if-nez v3, :cond_4

    .line 36
    .line 37
    goto :goto_5

    .line 38
    :cond_4
    const/4 v0, 0x2

    .line 39
    if-ne p1, v0, :cond_7

    .line 40
    .line 41
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_5
    iget v0, p0, Lcom/mycompany/app/view/MyBarView;->c:I

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    if-ne v0, v2, :cond_6

    .line 50
    .line 51
    move v1, v2

    .line 52
    :cond_6
    :goto_3
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->j2(IZ)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_7
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    :goto_4
    invoke-virtual {p0, v3, p1, p2}, Lcom/mycompany/app/view/MyBarView;->e(Lcom/mycompany/app/view/MyIconView;II)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_9
    :goto_6
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyBarView;->u:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/mycompany/app/view/MyBarView$6;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyBarView$6;-><init>(Lcom/mycompany/app/view/MyBarView;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setAddrNoti(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView;->k:Lcom/mycompany/app/view/MyIconView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/view/MyIconView;->x(ZZ)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setFilterColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyBarView;->z:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyBarView;->z:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIconLoad(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView;->r:Lcom/mycompany/app/view/MyIconView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyBarView;->y:I

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyBarView;->x:Z

    .line 9
    .line 10
    const/16 v2, 0x23

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/view/MyBarView;->r:Lcom/mycompany/app/view/MyIconView;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v2, v1}, Lcom/mycompany/app/view/MyBarView;->e(Lcom/mycompany/app/view/MyIconView;II)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    if-nez v1, :cond_2

    .line 28
    .line 29
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyBarView;->r:Lcom/mycompany/app/view/MyIconView;

    .line 41
    .line 42
    invoke-virtual {p0, p1, v2, v1}, Lcom/mycompany/app/view/MyBarView;->e(Lcom/mycompany/app/view/MyIconView;II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public setListener(Lcom/mycompany/app/view/MyBarView$BarListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyBarView;->f:Lcom/mycompany/app/view/MyBarView$BarListener;

    .line 2
    .line 3
    return-void
.end method
