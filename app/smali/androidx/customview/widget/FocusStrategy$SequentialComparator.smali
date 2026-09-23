.class Landroidx/customview/widget/FocusStrategy$SequentialComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/FocusStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SequentialComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:Z

.field public final h:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;


# direct methods
.method public constructor <init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->c:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->f:Landroid/graphics/Rect;

    .line 17
    .line 18
    iput-boolean p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->g:Z

    .line 19
    .line 20
    iput-object p2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->h:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->h:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->c:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->f:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-interface {v0, p2, p1}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iget p2, v1, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    if-ge p2, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-le p2, v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget p2, v1, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    iget-boolean v2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->g:Z

    .line 28
    .line 29
    if-ge p2, v0, :cond_2

    .line 30
    .line 31
    if-eqz v2, :cond_7

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    if-le p2, v0, :cond_3

    .line 35
    .line 36
    if-eqz v2, :cond_8

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    if-ge p2, v0, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    if-le p2, v0, :cond_5

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_5
    iget p2, v1, Landroid/graphics/Rect;->right:I

    .line 50
    .line 51
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    if-ge p2, p1, :cond_6

    .line 54
    .line 55
    if-eqz v2, :cond_7

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_6
    if-le p2, p1, :cond_9

    .line 59
    .line 60
    if-eqz v2, :cond_8

    .line 61
    .line 62
    :cond_7
    :goto_0
    const/4 p1, -0x1

    .line 63
    return p1

    .line 64
    :cond_8
    :goto_1
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    :cond_9
    const/4 p1, 0x0

    .line 67
    return p1
.end method
