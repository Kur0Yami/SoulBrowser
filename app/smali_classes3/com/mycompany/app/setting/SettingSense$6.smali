.class Lcom/mycompany/app/setting/SettingSense$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingSense;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSense;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSense$6;->a:Lcom/mycompany/app/setting/SettingSense;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingSense;->Q1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense$6;->a:Lcom/mycompany/app/setting/SettingSense;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingSense;->D0()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->O1:[I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    const/16 v3, 0x64

    .line 15
    .line 16
    aput v3, v1, v2

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    aput v3, v1, v4

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    aput v3, v1, v4

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    aput v3, v1, v4

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    aput v3, v1, v4

    .line 29
    .line 30
    move v1, v2

    .line 31
    :goto_0
    const/4 v3, 0x5

    .line 32
    if-ge v1, v3, :cond_1

    .line 33
    .line 34
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingSense;->O1:[I

    .line 35
    .line 36
    aget v3, v3, v1

    .line 37
    .line 38
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/setting/SettingSense;->H0(II)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0, v2}, Lcom/mycompany/app/setting/SettingSense;->G0(Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
