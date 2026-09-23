.class Lcom/mycompany/app/dialog/DialogSetFilter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$8;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetFilter$8;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFilter;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFilter;->n0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFilter;->o0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetFilter;->F()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 27
    .line 28
    sget v3, Lnet/kaki87/soul2/testing/R$string;->filter_link_1:I

    .line 29
    .line 30
    const-string v4, "\n"

    .line 31
    .line 32
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 36
    .line 37
    sget v3, Lnet/kaki87/soul2/testing/R$string;->filter_link_2:I

    .line 38
    .line 39
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 43
    .line 44
    sget v3, Lnet/kaki87/soul2/testing/R$string;->filter_link_3:I

    .line 45
    .line 46
    const-string v5, "\n\n"

    .line 47
    .line 48
    invoke-static {v2, v3, v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 52
    .line 53
    sget v3, Lnet/kaki87/soul2/testing/R$string;->filter_link_4:I

    .line 54
    .line 55
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 59
    .line 60
    sget v3, Lnet/kaki87/soul2/testing/R$string;->filter_link_5:I

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    new-instance v2, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 70
    .line 71
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetFilter;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetFilter$9;

    .line 78
    .line 79
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSetFilter$9;-><init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V

    .line 80
    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    invoke-direct {v2, v3, v1, v5, v4}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 84
    .line 85
    .line 86
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetFilter;->n0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 87
    .line 88
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetFilter$10;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogSetFilter$10;-><init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
