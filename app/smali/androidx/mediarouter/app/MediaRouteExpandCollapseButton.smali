.class Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "SourceFile"


# instance fields
.field public final h:Landroid/graphics/drawable/AnimationDrawable;

.field public final i:Landroid/graphics/drawable/AnimationDrawable;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public l:Z

.field public m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    sget p2, Landroidx/mediarouter/R$drawable;->mr_group_expand:I

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->h:Landroid/graphics/drawable/AnimationDrawable;

    .line 14
    .line 15
    sget v1, Landroidx/mediarouter/R$drawable;->mr_group_collapse:I

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 22
    .line 23
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->i:Landroid/graphics/drawable/AnimationDrawable;

    .line 24
    .line 25
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->b(Landroid/content/Context;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 32
    .line 33
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 40
    .line 41
    .line 42
    sget v1, Landroidx/mediarouter/R$string;->mr_controller_expand_group:I

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->j:Ljava/lang/String;

    .line 49
    .line 50
    sget v2, Landroidx/mediarouter/R$string;->mr_controller_collapse_group:I

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->k:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton$1;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton$1;-><init>(Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;)V

    .line 71
    .line 72
    .line 73
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->m:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method
