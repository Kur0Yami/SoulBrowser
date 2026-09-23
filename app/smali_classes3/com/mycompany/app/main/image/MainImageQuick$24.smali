.class Lcom/mycompany/app/main/image/MainImageQuick$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$24;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/main/image/MainImageQuick;->f2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$24;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageQuick;->A0()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick;->w0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2, p1, v2, v2}, Lcom/mycompany/app/main/image/MainImageView;->j(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 34
    .line 35
    iput-boolean p1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->K1:Z

    .line 39
    .line 40
    iput-boolean p1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->H1:Z

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/image/MainImageQuick;->E0(Z)V

    .line 44
    .line 45
    .line 46
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const/4 p1, 0x6

    .line 51
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 52
    .line 53
    .line 54
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    if-ne p1, v1, :cond_3

    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :catch_0
    :cond_3
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->B7(Landroid/app/Activity;I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
