.class public final Lcom/google/android/material/color/utilities/DynamicColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field public final a:Ljava/util/function/Function;

.field public final b:Ljava/util/function/Function;

.field public final c:Ljava/util/function/Function;

.field public final d:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/utilities/a;Lcom/google/android/material/color/utilities/a;Lcom/google/android/material/color/utilities/a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->a:Ljava/util/function/Function;

    .line 10
    iput-object p2, p0, Lcom/google/android/material/color/utilities/DynamicColor;->b:Ljava/util/function/Function;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->c:Ljava/util/function/Function;

    .line 12
    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->d:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/material/color/utilities/DynamicColor;->a:Ljava/util/function/Function;

    .line 4
    iput-object p3, p0, Lcom/google/android/material/color/utilities/DynamicColor;->b:Ljava/util/function/Function;

    .line 5
    iput-object p5, p0, Lcom/google/android/material/color/utilities/DynamicColor;->c:Ljava/util/function/Function;

    .line 6
    iput-object p7, p0, Lcom/google/android/material/color/utilities/DynamicColor;->d:Ljava/util/function/Function;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
