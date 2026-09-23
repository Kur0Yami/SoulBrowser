.class Lcom/google/auth/oauth2/SystemEnvironmentProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/EnvironmentProvider;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lcom/google/auth/oauth2/SystemEnvironmentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/SystemEnvironmentProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/auth/oauth2/SystemEnvironmentProvider;->c:Lcom/google/auth/oauth2/SystemEnvironmentProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
