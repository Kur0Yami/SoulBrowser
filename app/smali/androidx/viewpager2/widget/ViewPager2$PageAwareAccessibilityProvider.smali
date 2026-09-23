.class Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;
.super Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageAwareAccessibilityProvider"
.end annotation


# instance fields
.field public final a:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field public final b:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field public c:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public final synthetic d:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->a:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 12
    .line 13
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->b:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    const v1, 0x1020048

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->v(Landroid/view/View;I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    const v3, 0x1020049

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->v(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    const v4, 0x1020046

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->v(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;I)V

    .line 29
    .line 30
    .line 31
    const v5, 0x1020047

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v5}, Landroidx/core/view/ViewCompat;->v(Landroid/view/View;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    if-nez v6, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-boolean v7, v0, Landroidx/viewpager2/widget/ViewPager2;->v:Z

    .line 59
    .line 60
    if-nez v7, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    iget-object v8, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->b:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 68
    .line 69
    iget-object v9, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->a:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 70
    .line 71
    const/4 v10, 0x1

    .line 72
    const/4 v11, 0x0

    .line 73
    if-nez v7, :cond_7

    .line 74
    .line 75
    iget-object v4, v0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 76
    .line 77
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->I()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ne v4, v10, :cond_3

    .line 82
    .line 83
    move v2, v10

    .line 84
    :cond_3
    if-eqz v2, :cond_4

    .line 85
    .line 86
    move v4, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    move v4, v3

    .line 89
    :goto_0
    if-eqz v2, :cond_5

    .line 90
    .line 91
    move v1, v3

    .line 92
    :cond_5
    iget v2, v0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 93
    .line 94
    sub-int/2addr v6, v10

    .line 95
    if-ge v2, v6, :cond_6

    .line 96
    .line 97
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 98
    .line 99
    invoke-direct {v2, v4, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v2, v9}, Landroidx/core/view/ViewCompat;->w(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget v2, v0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 106
    .line 107
    if-lez v2, :cond_9

    .line 108
    .line 109
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 110
    .line 111
    invoke-direct {v2, v1, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v2, v8}, Landroidx/core/view/ViewCompat;->w(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_7
    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 119
    .line 120
    sub-int/2addr v6, v10

    .line 121
    if-ge v1, v6, :cond_8

    .line 122
    .line 123
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 124
    .line 125
    invoke-direct {v1, v5, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1, v9}, Landroidx/core/view/ViewCompat;->w(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 129
    .line 130
    .line 131
    :cond_8
    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    .line 132
    .line 133
    if-lez v1, :cond_9

    .line 134
    .line 135
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 136
    .line 137
    invoke-direct {v1, v4, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v1, v8}, Landroidx/core/view/ViewCompat;->w(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 141
    .line 142
    .line 143
    :cond_9
    :goto_1
    return-void
.end method
