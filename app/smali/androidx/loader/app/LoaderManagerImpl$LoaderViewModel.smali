.class Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderViewModel"
.end annotation


# static fields
.field public static final f:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final d:Landroidx/collection/SparseArrayCompat;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->f:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->d:Landroidx/collection/SparseArrayCompat;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->d:Landroidx/collection/SparseArrayCompat;

    .line 2
    .line 3
    iget v1, v0, Landroidx/collection/SparseArrayCompat;->g:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    const/4 v4, 0x0

    .line 8
    if-ge v3, v1, :cond_4

    .line 9
    .line 10
    iget-object v5, v0, Landroidx/collection/SparseArrayCompat;->f:[Ljava/lang/Object;

    .line 11
    .line 12
    aget-object v5, v5, v3

    .line 13
    .line 14
    check-cast v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 15
    .line 16
    iget-object v6, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->l:Landroidx/loader/content/Loader;

    .line 17
    .line 18
    invoke-virtual {v6}, Landroidx/loader/content/Loader;->c()Z

    .line 19
    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    iput-boolean v7, v6, Landroidx/loader/content/Loader;->d:Z

    .line 23
    .line 24
    iget-object v8, v5, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->n:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    .line 25
    .line 26
    if-eqz v8, :cond_0

    .line 27
    .line 28
    invoke-virtual {v5, v8}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->h(Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v9, v6, Landroidx/loader/content/Loader;->a:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 32
    .line 33
    if-eqz v9, :cond_3

    .line 34
    .line 35
    if-ne v9, v5, :cond_2

    .line 36
    .line 37
    iput-object v4, v6, Landroidx/loader/content/Loader;->a:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    .line 38
    .line 39
    if-eqz v8, :cond_1

    .line 40
    .line 41
    iget-boolean v4, v8, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->b:Z

    .line 42
    .line 43
    :cond_1
    invoke-virtual {v6}, Landroidx/loader/content/Loader;->d()V

    .line 44
    .line 45
    .line 46
    iput-boolean v7, v6, Landroidx/loader/content/Loader;->e:Z

    .line 47
    .line 48
    iput-boolean v2, v6, Landroidx/loader/content/Loader;->c:Z

    .line 49
    .line 50
    iput-boolean v2, v6, Landroidx/loader/content/Loader;->d:Z

    .line 51
    .line 52
    iput-boolean v2, v6, Landroidx/loader/content/Loader;->f:Z

    .line 53
    .line 54
    iput-boolean v2, v6, Landroidx/loader/content/Loader;->g:Z

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string v1, "Attempting to unregister the wrong listener"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v1, "No listener register"

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_4
    iget v1, v0, Landroidx/collection/SparseArrayCompat;->g:I

    .line 76
    .line 77
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->f:[Ljava/lang/Object;

    .line 78
    .line 79
    move v5, v2

    .line 80
    :goto_1
    if-ge v5, v1, :cond_5

    .line 81
    .line 82
    aput-object v4, v3, v5

    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    iput v2, v0, Landroidx/collection/SparseArrayCompat;->g:I

    .line 88
    .line 89
    return-void
.end method
