.class public final synthetic Landroidx/activity/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/activity/g;->c:I

    iput-object p3, p0, Landroidx/activity/g;->f:Ljava/lang/Object;

    iput p1, p0, Landroidx/activity/g;->g:I

    iput-object p4, p0, Landroidx/activity/g;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/activity/g;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/g;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/profileinstaller/DeviceProfileWriter;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/activity/g;->h:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/profileinstaller/DeviceProfileWriter;->b:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 13
    .line 14
    iget v2, p0, Landroidx/activity/g;->g:I

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Landroidx/activity/g;->f:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/activity/g;->h:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroid/content/IntentSender$SendIntentException;

    .line 27
    .line 28
    const-string v2, "this$0"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "$e"

    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/content/Intent;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 50
    .line 51
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v2, p0, Landroidx/activity/g;->g:I

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v0, v2, v3, v1}, Landroidx/activity/result/ActivityResultRegistry;->b(IILandroid/content/Intent;)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_1
    iget-object v0, p0, Landroidx/activity/g;->f:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/activity/g;->h:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    .line 69
    .line 70
    const-string v2, "this$0"

    .line 71
    .line 72
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v1, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;->a:Ljava/lang/Object;

    .line 76
    .line 77
    iget v2, p0, Landroidx/activity/g;->g:I

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Landroidx/activity/result/ActivityResultRegistry;->a(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
