.class public final synthetic Landroidx/activity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/activity/f;->c:I

    iput-object p2, p0, Landroidx/activity/f;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/activity/f;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/f;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/activity/ComponentDialog;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/activity/ComponentDialog;->a(Landroidx/activity/ComponentDialog;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Landroidx/activity/f;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/activity/FullyDrawnReporter;

    .line 17
    .line 18
    const-string v1, "this$0"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Landroidx/activity/FullyDrawnReporter;->c:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-boolean v2, v0, Landroidx/activity/FullyDrawnReporter;->d:Z

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    iget-object v2, v0, Landroidx/activity/FullyDrawnReporter;->b:Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    check-cast v2, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2$1;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/activity/ComponentActivity$fullyDrawnReporter$2$1;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/activity/FullyDrawnReporter;->a()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit v1

    .line 48
    throw v0

    .line 49
    :pswitch_1
    iget-object v0, p0, Landroidx/activity/f;->f:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    .line 52
    .line 53
    const-string v1, "this$0"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->f:Ljava/lang/Runnable;

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    iput-object v1, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->f:Ljava/lang/Runnable;

    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
