.class Lcom/mycompany/app/dialog/DialogOpenType$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogOpenType;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogOpenType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOpenType$3;->a:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOpenType$3;->a:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOpenType;->a0:Landroid/app/Activity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOpenType;->c0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogOpenType;->b0:Landroid/content/Context;

    .line 17
    .line 18
    sget v1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v1, 0x4

    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    const-string p1, "image/*"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v1, 0x5

    .line 31
    if-ne p1, v1, :cond_3

    .line 32
    .line 33
    const-string p1, "video/*"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const/4 v1, 0x6

    .line 37
    if-ne p1, v1, :cond_4

    .line 38
    .line 39
    const-string p1, "audio/*"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    const/4 v1, 0x7

    .line 43
    if-ne p1, v1, :cond_5

    .line 44
    .line 45
    const-string p1, "text/*"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_5
    const/4 p1, 0x0

    .line 49
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOpenType;->a0:Landroid/app/Activity;

    .line 50
    .line 51
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogOpenType;->c0:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogOpenType;->d0:Z

    .line 55
    .line 56
    invoke-static {v1, v2, p1, v3, v4}, Lcom/mycompany/app/main/MainUtil;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogOpenType;->dismiss()V

    .line 60
    .line 61
    .line 62
    return-void
.end method
