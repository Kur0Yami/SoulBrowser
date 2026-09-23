.class Lcom/mycompany/app/crop/HorizontalHandleHelper;
.super Lcom/mycompany/app/crop/HandleHelper;
.source "SourceFile"


# instance fields
.field public final d:Lcom/mycompany/app/crop/Edge;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/crop/Edge;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/crop/HandleHelper;-><init>(Lcom/mycompany/app/crop/Edge;Lcom/mycompany/app/crop/Edge;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/mycompany/app/crop/HorizontalHandleHelper;->d:Lcom/mycompany/app/crop/Edge;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(FFFFLandroid/graphics/RectF;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/crop/HorizontalHandleHelper;->d:Lcom/mycompany/app/crop/Edge;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v4, p3

    .line 6
    move v3, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/crop/Edge;->b(FFFFLandroid/graphics/RectF;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 12
    .line 13
    iget p2, p1, Lcom/mycompany/app/crop/Edge;->c:F

    .line 14
    .line 15
    sget-object p3, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 16
    .line 17
    iget p4, p3, Lcom/mycompany/app/crop/Edge;->c:F

    .line 18
    .line 19
    sget-object p5, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 20
    .line 21
    iget p5, p5, Lcom/mycompany/app/crop/Edge;->c:F

    .line 22
    .line 23
    sget-object v1, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 24
    .line 25
    iget v1, v1, Lcom/mycompany/app/crop/Edge;->c:F

    .line 26
    .line 27
    sub-float/2addr p5, v1

    .line 28
    mul-float/2addr p5, v4

    .line 29
    sub-float v1, p4, p2

    .line 30
    .line 31
    sub-float/2addr p5, v1

    .line 32
    const/high16 v1, 0x40000000    # 2.0f

    .line 33
    .line 34
    div-float/2addr p5, v1

    .line 35
    sub-float/2addr p2, p5

    .line 36
    add-float/2addr p4, p5

    .line 37
    iput p2, p1, Lcom/mycompany/app/crop/Edge;->c:F

    .line 38
    .line 39
    iput p4, p3, Lcom/mycompany/app/crop/Edge;->c:F

    .line 40
    .line 41
    invoke-virtual {p1, v5, v3}, Lcom/mycompany/app/crop/Edge;->e(Landroid/graphics/RectF;F)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, p1, v5, v4}, Lcom/mycompany/app/crop/Edge;->c(Lcom/mycompany/app/crop/Edge;Landroid/graphics/RectF;F)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Lcom/mycompany/app/crop/Edge;->g(Landroid/graphics/RectF;)F

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    neg-float p2, p2

    .line 58
    invoke-virtual {p3, p2}, Lcom/mycompany/app/crop/Edge;->f(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v4}, Lcom/mycompany/app/crop/Edge;->a(F)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p3, v5, v3}, Lcom/mycompany/app/crop/Edge;->e(Landroid/graphics/RectF;F)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0, p3, v5, v4}, Lcom/mycompany/app/crop/Edge;->c(Lcom/mycompany/app/crop/Edge;Landroid/graphics/RectF;F)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_1

    .line 75
    .line 76
    invoke-virtual {p3, v5}, Lcom/mycompany/app/crop/Edge;->g(Landroid/graphics/RectF;)F

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    neg-float p2, p2

    .line 81
    invoke-virtual {p1, p2}, Lcom/mycompany/app/crop/Edge;->f(F)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v4}, Lcom/mycompany/app/crop/Edge;->a(F)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method
