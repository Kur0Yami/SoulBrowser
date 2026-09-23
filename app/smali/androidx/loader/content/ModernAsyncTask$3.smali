.class Landroidx/loader/content/ModernAsyncTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic f:Landroidx/loader/content/ModernAsyncTask;


# direct methods
.method public constructor <init>(Landroidx/loader/content/ModernAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/loader/content/ModernAsyncTask$3;->f:Landroidx/loader/content/ModernAsyncTask;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/loader/content/ModernAsyncTask$3;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask$3;->f:Landroidx/loader/content/ModernAsyncTask;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/loader/content/ModernAsyncTask$3;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/loader/content/ModernAsyncTask;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/loader/content/ModernAsyncTask;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/loader/content/ModernAsyncTask;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    sget-object v1, Landroidx/loader/content/ModernAsyncTask$Status;->g:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 21
    .line 22
    iput-object v1, v0, Landroidx/loader/content/ModernAsyncTask;->f:Landroidx/loader/content/ModernAsyncTask$Status;

    .line 23
    .line 24
    return-void
.end method
