.class public final Lcom/google/android/material/color/utilities/MaterialDynamicColors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# direct methods
.method public static c()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v2, Lcom/google/android/material/color/utilities/d;

    .line 4
    .line 5
    const/16 v1, 0x12

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/material/color/utilities/d;

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    invoke-direct {v3, v1}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const-string v1, "inverse_surface"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v2, Lcom/google/android/material/color/utilities/d;

    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/material/color/utilities/d;

    .line 11
    .line 12
    const/16 v1, 0xb

    .line 13
    .line 14
    invoke-direct {v3, v1}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 18
    .line 19
    const/16 v1, 0x1c

    .line 20
    .line 21
    invoke-direct {v5, p0, v1}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 22
    .line 23
    .line 24
    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 25
    .line 26
    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    .line 27
    .line 28
    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    .line 29
    .line 30
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 31
    .line 32
    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    .line 33
    .line 34
    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lcom/google/android/material/color/utilities/b;

    .line 38
    .line 39
    const/16 v1, 0xd

    .line 40
    .line 41
    invoke-direct {v7, p0, v1}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 42
    .line 43
    .line 44
    const-string v1, "error"

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public final b()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v2, Lcom/google/android/material/color/utilities/d;

    .line 4
    .line 5
    const/16 v1, 0x19

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/material/color/utilities/d;

    .line 11
    .line 12
    const/16 v1, 0x1a

    .line 13
    .line 14
    invoke-direct {v3, v1}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 18
    .line 19
    const/16 v1, 0x1c

    .line 20
    .line 21
    invoke-direct {v5, p0, v1}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 22
    .line 23
    .line 24
    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 25
    .line 26
    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    .line 27
    .line 28
    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    .line 29
    .line 30
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 31
    .line 32
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 33
    .line 34
    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lcom/google/android/material/color/utilities/b;

    .line 38
    .line 39
    const/16 v1, 0xf

    .line 40
    .line 41
    invoke-direct {v7, p0, v1}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 42
    .line 43
    .line 44
    const-string v1, "error_container"

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public final d()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v2, Lcom/google/android/material/color/utilities/d;

    .line 4
    .line 5
    const/16 v1, 0x1b

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/material/color/utilities/a;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v3, v1}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 17
    .line 18
    const/16 v1, 0x1c

    .line 19
    .line 20
    invoke-direct {v5, p0, v1}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 21
    .line 22
    .line 23
    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 24
    .line 25
    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    .line 26
    .line 27
    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    .line 28
    .line 29
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 30
    .line 31
    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    .line 32
    .line 33
    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 34
    .line 35
    .line 36
    new-instance v7, Lcom/google/android/material/color/utilities/b;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {v7, p0, v1}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 40
    .line 41
    .line 42
    const-string v1, "primary"

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public final e()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v2, Lcom/google/android/material/color/utilities/a;

    .line 4
    .line 5
    const/16 v1, 0x12

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/material/color/utilities/a;

    .line 11
    .line 12
    const/16 v1, 0x13

    .line 13
    .line 14
    invoke-direct {v3, p0, v1}, Lcom/google/android/material/color/utilities/a;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 18
    .line 19
    const/16 v1, 0x1c

    .line 20
    .line 21
    invoke-direct {v5, p0, v1}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 22
    .line 23
    .line 24
    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 25
    .line 26
    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    .line 27
    .line 28
    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    .line 29
    .line 30
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 31
    .line 32
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 33
    .line 34
    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lcom/google/android/material/color/utilities/b;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-direct {v7, p0, v1}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 41
    .line 42
    .line 43
    const-string v1, "primary_container"

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public final f()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v2, Lcom/google/android/material/color/utilities/c;

    .line 4
    .line 5
    const/16 v1, 0x1a

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/material/color/utilities/c;

    .line 11
    .line 12
    const/16 v1, 0x1b

    .line 13
    .line 14
    invoke-direct {v3, v1}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 18
    .line 19
    const/16 v1, 0x1c

    .line 20
    .line 21
    invoke-direct {v5, p0, v1}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 22
    .line 23
    .line 24
    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 25
    .line 26
    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    .line 27
    .line 28
    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    .line 29
    .line 30
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 31
    .line 32
    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    .line 33
    .line 34
    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lcom/google/android/material/color/utilities/b;

    .line 38
    .line 39
    const/16 v1, 0x9

    .line 40
    .line 41
    invoke-direct {v7, p0, v1}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 42
    .line 43
    .line 44
    const-string v1, "secondary"

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public final g()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v2, Lcom/google/android/material/color/utilities/a;

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/material/color/utilities/a;

    .line 11
    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    invoke-direct {v3, p0, v1}, Lcom/google/android/material/color/utilities/a;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 18
    .line 19
    const/16 v1, 0x1c

    .line 20
    .line 21
    invoke-direct {v5, p0, v1}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 22
    .line 23
    .line 24
    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 25
    .line 26
    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    .line 27
    .line 28
    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    .line 29
    .line 30
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 31
    .line 32
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 33
    .line 34
    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lcom/google/android/material/color/utilities/b;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-direct {v7, p0, v1}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 41
    .line 42
    .line 43
    const-string v1, "secondary_container"

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public final h()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v2, Lcom/google/android/material/color/utilities/a;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {v2, v1}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v3, Lcom/google/android/material/color/utilities/a;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-direct {v3, v1}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 16
    .line 17
    const/16 v1, 0x1c

    .line 18
    .line 19
    invoke-direct {v5, p0, v1}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 20
    .line 21
    .line 22
    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 23
    .line 24
    const-wide/high16 v11, 0x401c000000000000L    # 7.0

    .line 25
    .line 26
    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    .line 27
    .line 28
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 29
    .line 30
    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    .line 31
    .line 32
    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lcom/google/android/material/color/utilities/b;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-direct {v7, p0, v1}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 39
    .line 40
    .line 41
    const-string v1, "tertiary"

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public final i()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    new-instance v2, Lcom/google/android/material/color/utilities/c;

    .line 4
    .line 5
    const/16 v1, 0x15

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/google/android/material/color/utilities/c;

    .line 11
    .line 12
    const/16 v1, 0x16

    .line 13
    .line 14
    invoke-direct {v3, p0, v1}, Lcom/google/android/material/color/utilities/c;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 18
    .line 19
    const/16 v1, 0x1c

    .line 20
    .line 21
    invoke-direct {v5, p0, v1}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 22
    .line 23
    .line 24
    new-instance v6, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 25
    .line 26
    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    .line 27
    .line 28
    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    .line 29
    .line 30
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 31
    .line 32
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 33
    .line 34
    invoke-direct/range {v6 .. v14}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lcom/google/android/material/color/utilities/b;

    .line 38
    .line 39
    const/4 v1, 0x7

    .line 40
    invoke-direct {v7, p0, v1}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 41
    .line 42
    .line 43
    const-string v1, "tertiary_container"

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method
