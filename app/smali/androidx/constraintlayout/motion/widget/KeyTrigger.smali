.class public Landroidx/constraintlayout/motion/widget/KeyTrigger;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;
    }
.end annotation


# instance fields
.field public b:Landroid/view/View;

.field public c:Ljava/util/HashMap;


# virtual methods
.method public final a()Landroidx/constraintlayout/motion/widget/Key;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->b:Landroid/view/View;

    .line 8
    .line 9
    new-instance v1, Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/graphics/RectF;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->c:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/Key;->a:Ljava/util/HashMap;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/Key;->a:Ljava/util/HashMap;

    .line 34
    .line 35
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/Key;->a:Ljava/util/HashMap;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->b:Landroid/view/View;

    .line 38
    .line 39
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->b:Landroid/view/View;

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->c:Ljava/util/HashMap;

    .line 42
    .line 43
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->c:Ljava/util/HashMap;

    .line 44
    .line 45
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->a()Landroidx/constraintlayout/motion/widget/Key;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
