.class public Lcom/google/android/material/shape/TriangleEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "SourceFile"


# virtual methods
.method public final b(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    mul-float v1, v0, p3

    .line 3
    .line 4
    sub-float v2, p2, v1

    .line 5
    .line 6
    const/high16 v3, -0x80000000

    .line 7
    .line 8
    mul-float/2addr v3, p3

    .line 9
    invoke-virtual {p4, v2, p2, v3}, Lcom/google/android/material/shape/ShapePath;->d(FFF)V

    .line 10
    .line 11
    .line 12
    add-float/2addr p2, v1

    .line 13
    invoke-virtual {p4, p2, p1, v0}, Lcom/google/android/material/shape/ShapePath;->d(FFF)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
