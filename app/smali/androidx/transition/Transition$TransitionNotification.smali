.class interface abstract Landroidx/transition/Transition$TransitionNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransitionNotification"
.end annotation


# static fields
.field public static final a:Landroidx/transition/b;

.field public static final b:Landroidx/transition/b;

.field public static final c:Landroidx/transition/b;

.field public static final d:Landroidx/transition/b;

.field public static final e:Landroidx/transition/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/transition/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/transition/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->a:Landroidx/transition/b;

    .line 8
    .line 9
    new-instance v0, Landroidx/transition/b;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Landroidx/transition/b;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->b:Landroidx/transition/b;

    .line 16
    .line 17
    new-instance v0, Landroidx/transition/b;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Landroidx/transition/b;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->c:Landroidx/transition/b;

    .line 24
    .line 25
    new-instance v0, Landroidx/transition/b;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Landroidx/transition/b;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->d:Landroidx/transition/b;

    .line 32
    .line 33
    new-instance v0, Landroidx/transition/b;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Landroidx/transition/b;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->e:Landroidx/transition/b;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
.end method
